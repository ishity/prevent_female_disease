import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calender'),
      ),
      body: Scaffold(
        backgroundColor: Color(0xFFE1EFFB),
        body: Container(
          child: const Center(
            child: Text(
              'Notification',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
