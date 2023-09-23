import 'package:flutter/material.dart';



class ContainerColorBlock extends StatelessWidget {
 final Color color;

 ContainerColorBlock({required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,height: 100,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
}
