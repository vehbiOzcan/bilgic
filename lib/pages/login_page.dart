import 'package:bilgic/pages/selection_page.dart';
import 'package:flutter/material.dart';
import 'package:bilgic/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Giriş Yap")),
        body: Center(
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    // Scrollbar ekler
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Image.asset('./lib/images/logo.png', width: 300),
                      Text(
                        'Bilgiç',
                        style: TextStyle(
                          color: Colors.blue[800], // Renk
                          fontFamily: 'Roboto', // Yazı tipi
                          fontSize: 24, // Yazı boyutu
                          fontWeight: FontWeight.bold, // Kalınlık
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'E-posta ve şifre ile giriş yapın', // Alt Başlık
                        style: TextStyle(
                          color: Colors.grey[600], // Renk
                          fontFamily: 'Roboto', // Yazı tipi
                          fontSize: 16, // Yazı boyutu
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'E-posta', // Etiket
                          hintText: 'E-postanızı giriniz', // Yer tutucu metin
                          filled: true, // Arka planı doldur
                          fillColor: Colors.white, // Arka plan rengi
                          border: OutlineInputBorder(
                            // Kenarlık
                            borderRadius: BorderRadius.circular(5), // Yuvarlama
                            borderSide: BorderSide(color: Colors.lime), // Renk
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15), // Padding
                          prefixIcon: Icon(Icons.email), // İkon
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lütfen bir e-posta giriniz.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true, // Şifreyi gizle
                        decoration: InputDecoration(
                          labelText: 'Şifre', // Etiket
                          hintText: 'Şifrenizi giriniz', // Yer tutucu metin
                          filled: true, // Arka planı doldur
                          fillColor: Colors.white, // Arka plan rengi
                          border: OutlineInputBorder(
                            // Kenarlık
                            borderRadius: BorderRadius.circular(5), // Yuvarlama
                            borderSide: BorderSide(color: Colors.lime), // Renk
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15), // Padding
                          prefixIcon: Icon(Icons.lock), // İkon
                          suffixIcon: IconButton(
                            icon:
                                Icon(Icons.visibility), // Göster/Gizle simgesi
                            onPressed: () {
                              setState(() {
                                _passwordController;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lütfen bir şifre giriniz.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectionCategoriesPage()), // SelectionCategories'e
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[800],
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text("Giriş",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterPage()), // RegisterPage'e git
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[800],
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              'Kayıt Ol',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      
                    ])))));
  }
}
