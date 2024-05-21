import 'package:bilgic/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        appBar: AppBar(
          title: Text('Kayıt Ol'),
        ),
        body: Center(
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Image.asset('./lib/images/logo.png', width: 300),
                      Text(
                        'Bilgiç\'e Katılın',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'E-posta',
                          hintText: 'E-postanızı giriniz',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(Icons.email),
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
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Şifre',
                          hintText: 'Şifrenizi giriniz',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.visibility),
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
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoginPage()), // RegisterPage'e git
                              );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[800],
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Kayıt Ol',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Giriş sayfasına geri dön.
                        },
                        child: Text(
                          'Hesabınız var mı? Giriş Yapın',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontFamily: 'Roboto',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ])))));
  }
}
