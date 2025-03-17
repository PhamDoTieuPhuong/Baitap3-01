import 'package:flutter/material.dart';
import 'components/components_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("I'm Ready")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Anh1.jpg',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text('Jetpack Compose'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Jetpack Compose is a modern UI toolkit for building native Android applications using a declarative programming approach'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComponentsScreen()),
                );
              },
              child: Text("I'm Ready"),
            ),
          ],
        ),
      ),
    );
  }
}