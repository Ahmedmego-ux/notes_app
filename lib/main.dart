import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/notes_view.dart';

void main() {
  runApp( NotceApp());
}

class NotceApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark(),
      home: NotesView(),
    );
  }

  // This widget is the root of your application.
}