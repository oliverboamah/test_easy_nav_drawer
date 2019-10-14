import 'package:flutter/material.dart';
import 'package:test_easy_nav_drawer/src/gel_menu_item.dart';
import 'package:test_easy_nav_drawer/src/gel_nav_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyNavDrawer Package Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'EasyNavDrawer Package Test'),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: GelNavDrawer(
        appLogoAsset: '',
        menuItems: [
          GelMenuItem(
              title: 'Home', iconData: Icons.home, showBeforeDivider: true)
        ],
      ),
      body: Center(
        child: Text('Manually Test EasyNavDrawer Package'),
      ),
    );
  }
}
