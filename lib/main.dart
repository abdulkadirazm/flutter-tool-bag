import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tool_bag/ui/screens/phonebook/contact_page.dart';
import 'package:tool_bag/ui/screens/shoppinglist/shopping_list_page.dart';

import 'ui/blocs/theme.dart';
import 'ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/phone_book": (context) => ContactPage(),
        "/shopping_list": (context) => ShoppingListPage()
      },
    );
  }
}
