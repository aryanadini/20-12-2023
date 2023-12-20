import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'BalancePage.dart';
import 'BasicExamplesPage.dart';
import 'MyVerticalBalancePage.dart';
class Expan extends StatefulWidget {
  const Expan({super.key});


  @override
  State<Expan> createState() => _ExpanState();
}

class _ExpanState extends State<Expan> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable page view"),

      ),
body:  IndexedStack(
      index: _currentIndex,
      children: [
        BalancePage(),
        MyVerticalBalancePage(),
        BasicExamplesPage(),
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        unselectedItemColor: Color(0xff3a0ca3),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_exchange_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: '',
          ),
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
