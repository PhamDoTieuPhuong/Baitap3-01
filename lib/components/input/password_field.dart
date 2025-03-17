import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key});

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  final TextEditingController _passwordController = TextEditingController();
  String _passwordStrength = '';
  bool _obscureText = true;

  void _checkPasswordStrength(String password) {
    if (password.length < 8) {
      setState(() {
        _passwordStrength = 'Weak';
      });
    } else if (password.length < 12) {
      setState(() {
        _passwordStrength = 'Moderate';
      });
    } else {
      setState(() {
        _passwordStrength = 'Strong';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password Field',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          controller: _passwordController,
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
          onChanged: _checkPasswordStrength,
        ),
        SizedBox(height: 8),
        Text('Password strength: $_passwordStrength'),
        SizedBox(height: 16),
      ],
    );
  }
}