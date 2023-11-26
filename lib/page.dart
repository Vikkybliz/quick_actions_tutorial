import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  final String title;
  const Pages({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
