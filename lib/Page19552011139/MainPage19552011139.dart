

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas_meri/Page19552011139/Dashboard19552011139.dart';
import 'package:tugas_meri/Page19552011139/DatePicker19552011139.dart';
import 'package:tugas_meri/Page19552011139/TimePicker19552011139.dart';



class MainPage19552011139 extends StatefulWidget {
  const MainPage19552011139({Key? key}) : super(key:key);

  @override
  _MainPage19552011139State createState() => _MainPage19552011139State();
}

class _MainPage19552011139State extends State<MainPage19552011139>{
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              Dashboard19552011139(),
              DatePicker19552011139(),
              TimePicker19552011139(), ],)
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blueAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.date_range),
            title: Text('Date'),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.redAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.timer),
            title: Text('Time'),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}