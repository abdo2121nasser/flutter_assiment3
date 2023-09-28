import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocks/hieght_slider_block.dart';
import '../blocks/measurment_container_block.dart';
import '../blocks/weight_rounded_slider_block.dart';
import '../enums/enum.dart';


class WeightScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCalculatorCubit, BmiCalculatorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=BmiCalculatorCubit.get(context);
        return Scaffold(
          body: SizedBox(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SElECT YOUR ',
                      style: TextStyle(fontSize: 18, color: Colors.black87),),
                    Text('WEIGHT',
                      style: TextStyle(fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 20,),
                MeasurmentBlock(),
                const SizedBox(height: 20,),
                WeightRoundedSliderBlock(),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        cubit.setweight(0.0);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                              width: 2,
                              color: Colors.blueAccent
                          )
                      ),
                      child:const SizedBox(
                        width: 110,
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.arrow_back, color: Colors
                                .blueAccent,),
                            Text(' BACK', style: TextStyle(
                                color: Colors.blueAccent),)
                          ],
                        ),
                      ),),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,

                      ),
                      child: const Text('CALCULATE BMI', style: TextStyle(color: Colors.white),),),

                  ],
                )


              ],
            ),
          ),
        );
      },
    );
  }
}
