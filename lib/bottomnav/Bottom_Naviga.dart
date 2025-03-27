import 'package:flutter/material.dart';
import '../accountscreen/account.dart';
import '../homescreen/homescreen.dart';
import 'category.dart';
import 'features.dart';



class Bottom_Naviga extends StatefulWidget {
  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Naviga> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
     Homepage1(),
     Category(),
     Features(),
     Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensures all items are shown
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home, color: Colors.purple),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category, color: Colors.purple),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            activeIcon: Icon(Icons.grid_view, color: Colors.purple),
            label: "Features",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle, color: Colors.purple),
            label: "Account",
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true, // To match the design
      ),
    );
  }
}
