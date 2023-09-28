import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:flutter/material.dart';


class GenderBlock extends StatelessWidget {

GenderEnum gender;

GenderBlock({required this.gender});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ]
      ),
      child: Column(
        children: [
          Image.asset(gender==GenderEnum.male?kMaleImage:kFemalImage,height: 150,width: 150,),
          Text(gender==GenderEnum.male?'Male':'Female',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),)
        ],
      ),

    );
  }
}
