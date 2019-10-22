import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uebung1: Widgetliste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetListeStudierendeScreen(),
    );
  }
}

class WidgetListeStudierendeScreen extends StatefulWidget {
  @override
  _WidgetListeStudierendeScreenState createState() =>
      _WidgetListeStudierendeScreenState();
}

class _WidgetListeStudierendeScreenState
    extends State<WidgetListeStudierendeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgetliste Studierende"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amberAccent,
          child: Column(
            children: <Widget>[
              _titelContainer(),
              _spacer(),
              Column(
                children: <Widget>[
                  zeileMitWidgetUndStudierendem("Widgetname", "Studierender"),
                  //
                  // TODO Hier Eure jeweilige Zeile einfügen !!!!!!
                  // Danach dann testen, ob es läuft und
                  // dann commit und push
                  // Viel Erfolg und viel Glück!
                  //
                  zeileMitWidgetUndStudierendem(
                    "Jan-Torsten",
                    "Macht den Rest :)",
                  ),
                ],
              ),
              _spacer(),
            ],
          ),
        ),
      ),
    );
  }

  // *****************************************
  // *****************************************1
  // Den folgenden Code könnt gerne ihr lesen, aber Ihr solltet ihn lieber
  // nicht verändern ;)
  // *****************************************1
  // *****************************************1

  SizedBox _spacer() {
    return SizedBox(
      height: 20,
    );
  }

  Container _titelContainer() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "In dieser Liste wird aufgeführt, "
          " welcher Studierende"
          " welches Widget vorführt.",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  /**
   * mit dieser Methode wird die einzelene Zeile erzeugt
   */
  Widget zeileMitWidgetUndStudierendem(widgetName, studierender) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            widgetName,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            studierender,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}