import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_search_icon.dart';

class CustomeAppbar extends StatelessWidget{

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
            children: [
              
              Text('Notes',style: TextStyle(
                fontSize: 25
              ),),
              Expanded(child: SizedBox()),
               customesearchicon(),
              
            ],
          ),
    );
  }
}

