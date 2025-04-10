import 'package:flutter/material.dart';

class customesearchicon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const customesearchicon({

    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressed,
        icon: 
       Icon(
          
          icon, size: 30,),
      ),
      
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.2)
        
      ),
    
    );
  }
}