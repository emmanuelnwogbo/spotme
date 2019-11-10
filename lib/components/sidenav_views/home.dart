import 'package:flutter/material.dart';

typedef VoidNavigate = void  Function(String route);

class Home extends StatelessWidget {
  VoidNavigate changeView;

  Home(this.changeView);

  @override
  Widget build(BuildContext context) {
    return ListView (
      children: <Widget>[
        Container (
          child: DrawerHeader(
              child: ListView(
                  children: <Widget>[
                    new ListTile(
                        title: Text('Home', style: TextStyle(color: Colors.green)),
                        trailing: Icon(Icons.home, color: Colors.black26),
                        onTap: () {changeView('home');}
                    ),
                    new ListTile(
                        title: Text('Topics', style: TextStyle(color: Colors.black)),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black26),
                        onTap: () {changeView('topics');}
                    ),
                    new ListTile(
                        title: Text('Locations', style: TextStyle(color: Colors.black)),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black26),
                        onTap: () {changeView('locations');}
                    ),
                  ]
              )
          ),
          height: 200.0,
        ),
        Container (
          height: 60.0,
          child: ListTile(
            contentPadding: EdgeInsets.all(7.0),
            leading: Icon(Icons.settings, color: Colors.green,),
            title: Align(
              child: Text('Settings', style: TextStyle(color: Colors.green)),
              alignment: Alignment(-1.2, 0),
            ),
            dense: true,
          ),
          decoration: BoxDecoration(
            //color: Colors.yellow[800],
            border: new Border.all(
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
        )
      ],
    );
  }
}