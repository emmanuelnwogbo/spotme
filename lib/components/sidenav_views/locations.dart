import 'package:flutter/material.dart';

typedef VoidNavigate = void  Function(String route);

class Locations extends StatelessWidget {
  VoidNavigate changeView;
  String title;

  Locations(this.changeView, this.title);

  //refactor code to get available locations from api immediately after mounting to screen
  List<String> locations = [
    'lagos',
    'accra',
    'bayelsa',
    'owerri',
    'kumasi',
    'kwame',
    'abuja',
    'loome',
    'canada',
    'us',
    'kenya'
  ];

  Widget returnLocations() {

    return new ListView.builder(
        itemCount: locations.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            contentPadding: EdgeInsets.all(7.0),
            leading: Icon(Icons.location_on, color: Colors.green),
            title: Align(
              child:  Text(locations[index], style: TextStyle(color: Colors.black)),
              alignment: Alignment(-1.2, 0),
            ),
            dense: true,
            //onTap: () {changeView('topics');}
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView (
        children: <Widget>[
          Container (
            child: DrawerHeader(
                child: ListView(
                    children: <Widget>[
                      new Text(title, style: TextStyle(color: Colors.green),),
                      ListTile(
                          contentPadding: EdgeInsets.all(7.0),
                          leading: Icon(Icons.arrow_back, color: Colors.black26,),
                          title: Align(
                            child: Text('Back', style: TextStyle(color: Colors.black)),
                            alignment: Alignment(-1.2, 0),
                          ),
                          dense: true,
                          onTap: () {changeView('home');}
                      ),
                    ]
                )
            ),
            height: 100.0,
          ),
          Container (
              child: returnLocations()
          )
        ]
    );
  }
}