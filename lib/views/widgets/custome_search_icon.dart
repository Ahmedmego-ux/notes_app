import 'package:flutter/material.dart';

class customesearchicon extends StatelessWidget {
  final IconData icon;
  const customesearchicon({

    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: 30,),
      
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.2)
      ),
      
    );
  }
}