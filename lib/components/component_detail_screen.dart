import 'package:flutter/material.dart';

class ComponentDetailScreen extends StatelessWidget {
  final String title;
  final Widget child;

  const ComponentDetailScreen({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child, // Hiển thị child
      ),
    );
  }
}