import 'package:flutter/material.dart';
import '../home/home_screen.dart';
import '../likes/likes_screen.dart';
import '../search/search_screen.dart';
import '../setting/setting_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    LikesScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() => _selectedIndex = index);
          },

          // selected color
          selectedItemColor: const Color(0xFF00A24C),

          // unselected color
          unselectedItemColor: Colors.black54,

          type: BottomNavigationBarType.fixed,
          elevation: 5,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home, color: Color(0xFF00A24C)),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.search, color: Color(0xFF00A24C)),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite_border, color: Color(0xFF00A24C)),
              label: "Like",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(
                Icons.settings_outlined,
                color: Color(0xFF00A24C),
              ),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}
