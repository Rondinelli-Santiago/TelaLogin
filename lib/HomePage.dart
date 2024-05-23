import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const  Center(child: Text('Tela Principal')),
      ),
      body: const SizedBox (
        height: double.infinity,
        width:  double.infinity,
        child: Center(
          child: Text('Bem vindo'),
        ),
        ),
    );
  }
}