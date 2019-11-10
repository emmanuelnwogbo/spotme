import 'package:flutter/material.dart';

import 'sidenav_views/home.dart';
import 'sidenav_views/topics.dart';
import 'sidenav_views/locations.dart';

typedef VoidNavigate = void  Function(String route);

class Sidenav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SidenavState();
  }
}

class _SidenavState extends State<Sidenav>  {

  String _currentView = 'home';

  VoidNavigate changeView (view) {
    setState(() {
      _currentView = view;
    });
  }

  returnView() {
    if (_currentView == 'home') {
      return Home(changeView);
    }

    if (_currentView == 'topics') {
      return Topics(changeView, 'Topics');
    }

    if (_currentView == 'locations') {
      return Locations(changeView, 'Locations');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: returnView()
    );
  }
}