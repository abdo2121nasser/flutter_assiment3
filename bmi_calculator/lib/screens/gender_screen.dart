import 'package:bmi_calculator/blocks/gender_block.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:bmi_calculator/screens/hieght_screen.dart';
import 'package:flutter/material.dart';




class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
        const  Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SElECT YOUR ',
              style: TextStyle(fontSize: 18,color:Colors.black87),),
              Text('Gender',
                style: TextStyle(fontSize: 20,color:Colors.black87,fontWeight: FontWeight.bold),),
            ],
          ),
         const SizedBox(height: 20,),
          InkWell(onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HieghtScreen()));

          },
              child: GenderBlock(gender: GenderEnum.male)),
         const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HieghtScreen()));

            },
              child: GenderBlock(gender: GenderEnum.female)),
        ],
      ),
    );
  }
}
