import 'package:flutter/material.dart';
import 'package:ladida_fashion/login.dart';

class NextPage extends StatelessWidget {
  final String name;
  final String email;

  NextPage({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Email: $email'),
          ],
        ),
      ),
    );
  }
}
