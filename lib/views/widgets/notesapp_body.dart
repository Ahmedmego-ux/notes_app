import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_appbar.dart';

class NotesappBody extends StatelessWidget{
  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomeAppbar(),
        ],
      ),
    );
  }
}