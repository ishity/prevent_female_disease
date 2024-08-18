import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Record'),
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
