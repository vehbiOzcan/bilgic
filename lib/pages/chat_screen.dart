import 'package:bilgic/components/bilgic_appbar.dart';
import 'package:bilgic/components/bilgic_drawer.dart';
import 'package:bilgic/pages/categories.dart';
import 'package:bilgic/pages/selection_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatScreen extends StatefulWidget {
  final Category category;

  ChatScreen({required this.category});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  final ScrollController _scrollController = ScrollController();

  bool _isLoading = false;

  Future<void> generateResponse(String text) async {
    setState(() {
      _isLoading = true; // Yükleme animasyonunu başlat
    });

    final String question =
        "${text.toString()} ${widget.category.prompt}"; //Prompt
    final model = GenerativeModel(
        model: 'gemini-pro', apiKey: dotenv.env['API_KEY'].toString());
    final content = [Content.text(question)];
    final response = await model.generateContent(content);
    final String responseText = response.text.toString();

    setState(() {
      _isLoading = false; // Yükleme animasyonunu durdur
      _messages.add(ChatMessage(
          text: responseText, isUserMessage: false)); // Gelen cevabı ekle
    });

    _scrollToBottom();
  }

  Widget _buildMessageBubble(ChatMessage message) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
          alignment: message.isUserMessage
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.isUserMessage ? "Ben:" : "Bilgiç:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: message.isUserMessage
                      ? Colors.pink[100]
                      : Colors.blue[100],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.all(12.0),
                child: Text(message.text),
              ),
            ],
          )),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: (text) {
                _addMessage(text); // Mesaj gönderildiğinde direkt ekleyelim
                generateResponse(text); // Ardından cevap üretimi başlasın
                _textController.clear();
              },
              //decoration: InputDecoration.collapsed(hintText: 'Mesajınızı buraya yazın'),
              decoration: InputDecoration(
                hintText: 'Kelimeyi buraya yazın',
                filled: true, // Arka planı doldurmayı etkinleştir
                fillColor: Colors.grey[100], // Arka plan rengi
                border: OutlineInputBorder(
                  // Kenarlık tasarımı
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none, // Kenarlık yok
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0), // İçerik dolgusu
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              final text = _textController.text;
              _addMessage(text); // Mesaj gönderildiğinde direkt ekleyelim
              generateResponse(text); // Ardından cevap üretimi başlasın
              _textController.clear();
            },
          ),
        ],
      ),
    );
  }

  void _addMessage(String text) {
    setState(() {
      _messages.add(ChatMessage(
          text: text, isUserMessage: true)); // Kullanıcının mesajını ekleyelim
    });
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:BilgicAppBar(title: '${widget.category.title}'),
      drawer: BilgicDrawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.all(8.0),
              reverse: false,
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = _messages[index];
                return _buildMessageBubble(message);
              },
            ),
          ),
          if (_isLoading)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SpinKitThreeBounce(color: Colors.blue, size: 30.0),
              ),
            ),
          Divider(height: 1.0),
          SizedBox(height: 10),
          _buildTextComposer(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

class ChatMessage {
  final String text;
  final bool isUserMessage;

  ChatMessage({required this.text, required this.isUserMessage});
}
