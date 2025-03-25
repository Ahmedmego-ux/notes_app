import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/add_note_bottom.dart';
import 'package:flutter_application_5/views/widgets/notesapp_body.dart';

class NotesView extends StatelessWidget{
   Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){
showModalBottomSheet(
  shape:RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16)
  ),
  context: context, builder: (context){
return Addnotebottomshet();
});
       },child: Icon(Icons.add),),
        body:NotesappBody() ,
    );
  }
}
