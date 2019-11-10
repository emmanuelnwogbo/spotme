import 'package:flutter/material.dart';

class Bottomappbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, color: Colors.green,),
            title: new Text('Home', style: TextStyle(color: Colors.green[800])),
            //backgroundColor: Colors.black,
            //onPressed: selectIcon
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search, color: Colors.black,),
            title: new Text('Search', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_circle_outline, color: Colors.black,),
            title: new Text('New Post', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat_bubble_outline, color: Colors.black,),
            title: new Text('Chat', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person_outline, color: Colors.black,),
            title: new Text('Profile', style: TextStyle(color: Colors.black)),
          )
        ]
    );
  }
}