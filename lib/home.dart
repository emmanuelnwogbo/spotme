import 'package:flutter/material.dart';

import 'components/bottomappbar.dart';
import 'components/sidenav.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}


class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: Text('Spotme', style: TextStyle(color: Colors.white ),),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white, //This will change the drawer background to blue.
              //other styles
            ),
            child: Container(
                width: 230.0,
                child: Sidenav()
            )
        ),
        bottomNavigationBar: Bottomappbar()
    );
  }
}