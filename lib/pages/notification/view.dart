import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
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
