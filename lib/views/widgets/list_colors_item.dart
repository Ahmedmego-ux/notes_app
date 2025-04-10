import 'package:flutter/material.dart';

class coloritem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.amber,
    );
  }
}
class listcolorsitem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: coloritem(),
      );
      }),
    );
    
  }
}