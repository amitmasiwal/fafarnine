// ignore_for_file: non_constant_identifier_names

import 'package:faffarnine/screens/home.dart';
import 'package:faffarnine/screens/search.dart';
import 'package:faffarnine/screens/yourlibrary.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {

  final Tabs = [const Home(), const Search(), const YourLibrary() ];
  int currentTabIndex =0;

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex){
            currentTabIndex= currentIndex;
            setState(() {

            }); // rendering re
          },
          backgroundColor: Colors.black45, selectedLabelStyle: const TextStyle(color: Colors.white,),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label:'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_books,color: Colors.white,),label:'Your Library')
          ]),
    );
  }
}
