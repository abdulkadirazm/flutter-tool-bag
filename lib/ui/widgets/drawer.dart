import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tool_bag/ui/blocs/theme.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppDrawerState();
}

class _AppDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Icon(
                        Icons.architecture,
                        color: Colors.white,
                        size: 100.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Text(
                          "Tool Bag",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Anasayfa'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Phone Book'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/phone_book");
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Shopping List'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/shopping_list");
            },
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new RaisedButton(
                onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text('Dark Theme'),
                    new Icon(Icons.lightbulb),
                  ],
                ),
              ),
              new RaisedButton(
                onPressed: () => _themeChanger.setTheme(ThemeData.light()),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text('Light Theme'),
                    new Icon(Icons.lightbulb_outline),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
