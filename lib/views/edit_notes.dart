import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';

class EditNotes extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return EditNotesviewbody();
  }
}
class EditNotesviewbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Column(
      children: [
        SizedBox(height: 50,),
        CustomeAppbar(namebar: 'EditNotes')

      ],
    ));
  }
}