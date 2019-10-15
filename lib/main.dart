import 'package:fading_changes/fading_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _visible
              ? FadingDialog(
                  text: "This is a fading dialog text.",
                  backgroundColor: Colors.black,
                  icon: Icons.ac_unit,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  animationDuration: Duration(milliseconds: 2500),
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: RaisedButton(
                  child: Text("Show fading dialog"),
                  onPressed: () => setState(() => _visible = !_visible),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
