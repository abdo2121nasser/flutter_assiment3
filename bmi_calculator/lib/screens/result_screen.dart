import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/screens/gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCalculatorCubit, BmiCalculatorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=BmiCalculatorCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Your Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Container(
                  height: 200, width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(
                              0, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(cubit.getBodyWeightName().toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),),
                      Text(cubit.bmiValue!.toStringAsFixed(2),
                        style:const TextStyle(
                             fontSize: 20),),
                      Text('you have ${cubit.getBodyWeightName()} body weight',
                        style:const TextStyle(
                            fontSize: 20),),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    cubit.setHeight(0);
                    cubit.setweight(0);

                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),
                    backgroundColor: Colors.blueAccent,

                  ),
                  child: const Text('start again', style: TextStyle(color: Colors.white),),),
              ],
            ),
          ),
        );
      },
    );
  }
}
