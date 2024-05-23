import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String? email;
  String? password;

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/imagem/logo.png')),
          const SizedBox(height: 20.0),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top:20,bottom: 12),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.black),
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_circle_sharp)
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.black),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.https)
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red)
                      ),
                      onPressed: () {
                        if (email == 'rond@gmail.com' && password == '123') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          debugPrint('Incorreto');
                        }
                      },
                      child: const Text(
                        style: TextStyle(color: Colors.black),
                        'Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: Image.asset('assets/imagem/background5.jpeg',
                  fit: BoxFit.cover)),
          _body(),
        ],
      ),
    );
  }
}
