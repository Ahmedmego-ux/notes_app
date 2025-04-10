import 'package:flutter/material.dart';
import 'package:flutter_application_5/views/widgets/custome_search_icon.dart';

class CustomeAppbar extends StatelessWidget{
final String namebar;
final void Function()? onPressed;
final IconData icon;
  const CustomeAppbar({super.key, required this.namebar, required this.icon, this.onPressed});
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
            children: [
              
              Text(namebar,style: TextStyle(
                fontSize: 25
              ),),
              Expanded(child: SizedBox()),
               customesearchicon(
                onPressed: onPressed,
                icon: icon,
               ),
              
            ],
          ),
    );
  }
}

