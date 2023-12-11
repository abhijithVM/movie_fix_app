import 'package:flutter/material.dart';
import 'package:moviefixapp/view/pages/now_playing_page.dart';
import 'package:moviefixapp/view/pages/top_rated_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Now Playing',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Top Rated',
            ),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    NowPlayingPage(),
    TopRatedPage(),
   ];
}
