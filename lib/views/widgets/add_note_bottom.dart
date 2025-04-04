import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_text_field.dart';

class Addnotebottomshet extends StatelessWidget{
    Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomeTextField(
            hintText: 'tittle',
          ),
          SizedBox(height: 15,),
          CustomeTextField(hintText: 'content',
          maxlines: 5,)
        ],
      ),
    );
}}