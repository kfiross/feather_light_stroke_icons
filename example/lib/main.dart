import 'package:feather_light_stroke_icons/feather_light_stroke_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Example")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Light-stroke examples icons (1px)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  StrokedIcon(FeatherIconName.alertCircle),
                  StrokedIcon(FeatherIconName.helpCircle),
                  StrokedIcon(FeatherIconName.activity),
                  StrokedIcon(FeatherIconName.gift),
                ],
              ),
              SizedBox(height: 24),
              Text("Medium-stroke examples icons (1.5px)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  StrokedIcon(FeatherIconName.alertCircle, stroke: Stroke.medium),
                  StrokedIcon(FeatherIconName.helpCircle, stroke: Stroke.medium),
                  StrokedIcon(FeatherIconName.activity, stroke: Stroke.medium),
                  StrokedIcon(FeatherIconName.gift, stroke: Stroke.medium)
                ],
              ),
              Text("Normal examples icons (2px)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Feather.alert_circle),
                  Icon(Feather.help_circle),
                  Icon(Feather.activity),
                  Icon(Feather.gift),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
