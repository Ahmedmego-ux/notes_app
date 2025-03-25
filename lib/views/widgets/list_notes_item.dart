import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/notes_item.dart';

class listnotesitem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder:(context,index){
        return Padding(padding: EdgeInsets.symmetric(vertical: 5),
        child: notesitem(),
        );
      }),
    );
  }
}
