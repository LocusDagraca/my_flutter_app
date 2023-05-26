import 'package:flutter/material.dart';



class UserSettingsPage extends StatelessWidget{
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserSettings Page'),),
      body: const Center(
        child: Text('hello UserSettings', style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

}