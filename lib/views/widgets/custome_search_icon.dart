import 'package:flutter/material.dart';

class customesearchicon extends StatelessWidget {
  const customesearchicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.search, size: 30,),
      
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.2)
      ),
      
    );
  }
}