import 'package:flutter/material.dart';

class coloritem extends StatelessWidget{
  final bool isActive;

  const coloritem({super.key, required this.isActive, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: color,
      ),
    )
    : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class listcolorsitem extends StatefulWidget{
  @override
  State<listcolorsitem> createState() => _listcolorsitemState();
}

class _listcolorsitemState extends State<listcolorsitem> {
  @override
   List<Color>Colors=[Color(0xFF1E2A78),
    Color(0xFF4FC3F7), Color(0xFFFF7043),
    Color.fromARGB(255, 147, 65, 143),
    Color(0xFFFFD3B6)
   ];
  int currentindx =0;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Colors.length,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GestureDetector(
          onTap: () {
            currentindx=index;
            setState(() {
              
            });
          },
          child: coloritem(
            color: Colors[index],
          isActive: currentindx==index,
        
          ),
        ),
      );
      }),
    );
    
  }
}