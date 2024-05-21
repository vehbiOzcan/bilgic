import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final String _apiKey = dotenv.env['API_KEY'].toString();

  static String wordDescript(String question) {
    GeminiService gs = GeminiService();
    //Future<GenerateContentResponse> response = gs.createContent(question);
    String answer = gs.createContent(question).toString();
    return answer;
  }

  

  Future<String> createContent(String question) async {
    final model = GenerativeModel(model: 'gemini-pro', apiKey: _apiKey);
    final content = [Content.text(question)];
    final response = await model.generateContent(content);
    return response.text.toString();
  }
}
