import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/2.jpg'), // Add your logo asset here
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter your email';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) return 'Please enter your password';
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                  Navigator.pushReplacementNamed(context, 'home');
                },
                child: Text('Log-in'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text('Don\'t have an account? Create an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
