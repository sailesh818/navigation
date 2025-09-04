import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;


  final List<Widget> pages =[
    Center(child: Text("Homepage")),
    Center(child: Text("Create")),
    Center(child: Text("Settings")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Page"),),
      drawer: Drawer(
        child: DrawerHeader(
          child: Text("Menu")),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: "create"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "person"
          ),
        ]
      ),
    );
  }
}