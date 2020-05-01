import 'package:flutter/material.dart';
import 'package:weednoob/screens/infoPage.dart';
import 'package:weednoob/screens/quizPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _pageOptions = <Widget>[
    new InfoPage(),
    new QuizPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cannabis Guide'),
        backgroundColor: Color(0xFF195501),
      ),
      body: Container(
        child: _pageOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('Info')),
          BottomNavigationBarItem(icon: Icon(Icons.toc), title: Text('Quiz')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF195501),
        onTap: _onItemTapped,
      ),
    );
  }
}
