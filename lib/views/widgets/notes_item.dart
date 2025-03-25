import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notesitem extends StatelessWidget{
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
      
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(16),
  color: Color(0xffFFCC80)

),
 child: Column(
  crossAxisAlignment: CrossAxisAlignment.end,
   children: [
     ListTile(
      title: Text('Flutter Tips',style: TextStyle(color: Colors.black,
      fontSize: 26
      ),),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 16),
        child: Text('ahmed magdy ashmawy',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18)),
      ),
      trailing: IconButton(onPressed: (){},
       icon: Icon(FontAwesomeIcons.trash,color: (Colors.black),size: 27,)),
       
     
     ),
     Padding(
       padding: const EdgeInsets.only(right: 24,top: 24),
       child: Text('may 2025',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16),),
     )
   ],
 ),
    );
  }
}