import 'package:flutter/material.dart';



class TestPage extends StatelessWidget{
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),),
      body: const Center(
        child: Text('Welcome to Locus', style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
  
}