import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant.dart';
import 'package:flutter_application_5/models/note_model.dart';
import 'package:flutter_application_5/views/notes_view.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
await Hive.initFlutter();
Hive.registerAdapter(NoteModelAdapter());
await Hive.openBox(knotesbox);

  runApp( NotceApp());
}

class NotceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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