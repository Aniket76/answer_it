import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String name;
  const HomeScreen({super.key, required this.name});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Text('Welcome'),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back to Login'),
          ),
        ],
      ),
    );
  }
}
