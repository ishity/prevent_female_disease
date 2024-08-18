import 'package:flutter/material.dart';
import 'package:prevent_female_disease/pages/calender/view.dart';
import 'package:prevent_female_disease/pages/medical_records/view.dart';
import 'package:prevent_female_disease/pages/notification/view.dart';
import 'package:prevent_female_disease/pages/record/view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;
  late final List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      const MedicalRecordsScreen(),
      const RecordScreen(),
      const NotificationScreen(),
      const CalenderScreen(),
    ];
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildIcon(IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _selectedIndex == index ? Color(0xFFEE9075) : Colors.transparent,
      ),
      padding: EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: _selectedIndex == index ? Colors.white : Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:
              const Color(0xFFFCEFDF), // Ensure this color is what you want
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.home, 0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.qr_code, 1),
              label: 'Record',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.notifications, 2),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.calendar_today, 3),
              label: 'Calender',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.black,
          onTap: onItemTapped,
        ),
      );
}
