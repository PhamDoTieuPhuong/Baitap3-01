import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _textController = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Text Field',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            labelText: 'Enter text',
          ),
          onChanged: (text) {
            setState(() {
              _inputText = text;
            });
          },
        ),
        SizedBox(height: 12),
        Text('You entered: $_inputText'),
        SizedBox(height: 20),
      ],
    );
  }
}