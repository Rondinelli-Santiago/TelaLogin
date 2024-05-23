import 'package:flutter/material.dart';
import 'package:ola_mundo/HomePage.dart';
import 'package:ola_mundo/TelaLogin.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaLogin(),
        '/home': (context) => const HomePage(),
      }
    );
  }
}