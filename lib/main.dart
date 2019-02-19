import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'NoteList.dart';
import 'NoteDetails.dart';


void main() => runApp(MaterialApp(
  title: 'Flutter Fahri',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: new Color(0xff3EB3D0),
    accentColor: new Color(0xff3EB3D0),
  ),
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
    '/NoteList': (BuildContext context) => new NoteListPage(),
    '/NoteDetail': (BuildContext context) => new NoteDetailsPage(),
    // '/NavAvatar': (BuildContext context) => new NavAvatar(),
    // '/EP': (BuildContext context) => new EditProfiless(),
  },
));

