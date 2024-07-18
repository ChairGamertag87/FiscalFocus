import 'package:fiscalfocus/Pages/account_page.dart';
import 'package:fiscalfocus/pages/add_account_page.dart';
import 'package:flutter/material.dart';
import 'package:fiscalfocus/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Home"),
            Text("Account List"),
            Text("Add a new account"),

          ][_currentIndex],

        ),
        body: [
          HomePage(),
          AccountPage(),
          AddAccountPage()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on),
                label: 'Account'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add'
            )
          ],
        ),
      ),
    );
  }
}


 






