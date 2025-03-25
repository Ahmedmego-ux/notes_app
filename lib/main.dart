import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/notes_view.dart';

void main() {
  runApp( NotceApp());
}

class NotceApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 62, 57, 57)

      ),
      home: NotesView(),
    );
  }

  // This widget is the root of your application.
}