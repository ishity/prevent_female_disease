import 'package:flutter/material.dart';

class MedicalRecordsScreen extends StatefulWidget {
  const MedicalRecordsScreen({Key? key}) : super(key: key);

  @override
  _MedicalRecordsScreenState createState() => _MedicalRecordsScreenState();
}

class _MedicalRecordsScreenState extends State<MedicalRecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedicalRecords'),
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
