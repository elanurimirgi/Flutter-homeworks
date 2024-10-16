import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ColorChangerPage(),
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  const ColorChangerPage({super.key});

  @override
  State<ColorChangerPage> createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.blue; // Initial background color is blue.
  bool _isYellow = true; // Flag to control the color state.

  // Changes the background color when the button is pressed.
  void _changeColor() {
    setState(() {
      // If _isYellow is true, sets the background to yellow; otherwise, blue.
      _backgroundColor = _isYellow ? Colors.yellow : Colors.blue;
      _isYellow = !_isYellow; // Switches the flag value.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor, // Sets the background color.
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor, // Changes the color on button press.
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Change Color'),
        ),
      ),
    );
  }
}
