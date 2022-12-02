import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/views/home_view/home.dart';
import 'package:spotify_clone/views/library_view/library.dart';
import 'package:spotify_clone/views/premium_view/premium.dart';

import '../views/search_view/search.dart';

class Tabbar extends StatefulWidget{
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar>{
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded, size: 24,), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded, size: 24,), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.queue_music_rounded, size: 24,), label: "Your Library",),
          BottomNavigationBarItem(icon: Padding(padding: EdgeInsets.all(4),child: FaIcon(FontAwesomeIcons.spotify, size: 20,)), label: "Premium",),
        ],
      ),
      body: Stack(
        children: [
          renderView(0, HomePage()),
          renderView(1, SearchPage()),
          renderView(2, LibraryPage()),
          renderView(3, PremiumPage()),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }

}