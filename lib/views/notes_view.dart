import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/notesapp_body.dart';

class NotesView extends StatelessWidget{
   Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){
showBottomSheet(context: context, builder: (context){
return Container();
});
       },child: Icon(Icons.add),),
        body:NotesappBody() ,
    );
  }
}
class Addnotebottomshet extends StatelessWidget{
    Widget build(BuildContext context) {
    return Container();
}}