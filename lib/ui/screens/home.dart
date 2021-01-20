import 'package:flutter/material.dart';
import 'package:tool_bag/ui/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  Widget buildSplashText(String text) {
    TextStyle roundTextStyle =
        const TextStyle(fontSize: 16.0, color: Colors.white);
    return new Text(
      text,
      style: roundTextStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tool Bag'),
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 475.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/phone_book")},
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Icon(Icons.contact_phone),
                      ),
                      new Text('Phone Book'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/shopping_list")},
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Icon(Icons.shopping_cart),
                      ),
                      new Text('Shopping List'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
