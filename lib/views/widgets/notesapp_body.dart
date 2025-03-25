import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';
import 'package:flutter_application_5/views/widgets/list_notes_item.dart';



class NotesappBody extends StatelessWidget{
  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomeAppbar(),
         // SizedBox(height: 5,),
         Expanded(child:  listnotesitem())
        ],
      ),
    );
  }
}
