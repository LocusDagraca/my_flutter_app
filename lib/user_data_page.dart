import 'package:flutter/material.dart';



class UserDataPage extends StatelessWidget{
  const UserDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserData Page'),),
      body: const Center(
        child: Text('hello UserData', style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

}