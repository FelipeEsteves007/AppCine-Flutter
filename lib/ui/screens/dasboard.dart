import 'package:cinetopia/ui/screens/releases.dart';
import 'package:cinetopia/ui/screens/search_movies.dart';
import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int _currentIndex = 0;
  final List<Widget> _screens = <Widget>[SearchMovies(), Releases()];

  void uptdaeIndex (int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF120326) ,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 54, 16, 0),
        child: _screens.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => uptdaeIndex(value),
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Filmes"),
          BottomNavigationBarItem(icon: Icon(Icons.today), label: "Lançamentos")
      ] ),
    );
  }
}