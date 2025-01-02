import 'package:flutter/material.dart';

class BottomNavbarComponent extends StatefulWidget {
  const BottomNavbarComponent({super.key});

  @override
  State<BottomNavbarComponent> createState() => _BottomNavbarComponentState();
}

class _BottomNavbarComponentState extends State<BottomNavbarComponent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 33, 35, 39),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 155, 155, 155),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "",
          ),
        ],
      ),
    );
  }
}
