import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';

class EditNotes extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return EditNotesviewbody();
  }
}
class EditNotesviewbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
      children: [
        SizedBox(height: 40,),
        CustomeAppbar(namebar: 'EditNotes'
        ,icon: Icons.check,),
        SizedBox(height: 30,),
        CustomeTextField(hintText: 'title'),
        SizedBox(height: 15,)
        ,CustomeTextField(hintText: 'content',
        maxlines: 5,)

      ],
    )));
  }
}