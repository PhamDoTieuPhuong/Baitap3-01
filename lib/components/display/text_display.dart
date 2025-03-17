import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  const TextDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'sans-serif',
                  fontSize: 30.0,
                  height: 1.5,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'The ',
                    style: TextStyle(
                    ),
                  ),
                  TextSpan(
                    text: 'quick',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: ' Brown',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '\nfox '),
                  TextSpan(
                    text: 'jumps',
                    style: TextStyle(
                      letterSpacing: 5.0,
                    ),
                  ),
                  TextSpan(
                    text: ' over ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'the',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ' lazy',
                    style: TextStyle(
                      fontFamily: 'monospace',
                    ),
                  ),
                  TextSpan(text: ' dog.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}