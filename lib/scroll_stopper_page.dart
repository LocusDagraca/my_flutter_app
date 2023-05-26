import 'package:flutter/material.dart';



class ScrollStopperPage extends StatelessWidget{
  const ScrollStopperPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollStopper Page'),),
      body: const Center(
        child: Text('hello ScrollStopper', style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

}