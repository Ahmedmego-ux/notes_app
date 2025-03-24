import 'package:flutter/material.dart';

class NotesView extends StatelessWidget{
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Row(
          children: [
            Text('notes'),
            Icon(Icons.search)
          ],
        ),),
    );
  }
}