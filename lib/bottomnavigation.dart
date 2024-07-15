import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}


class _BottomnavigationState extends State<Bottomnavigation> {
    int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 1: Business',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(backgroundColor: Colors.black,
        title:  Text('BottomNavigationbar',style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body:Column(
        
        children:[ _widgetOptions.elementAt(_selectedIndex),
        Text("haii")],
      ),
              bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
             backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon:Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            
            label: 'message',
          backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            
            label: 'School',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
       
      ),
      );}}