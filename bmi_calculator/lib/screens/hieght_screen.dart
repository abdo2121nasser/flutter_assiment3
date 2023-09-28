import 'package:bmi_calculator/blocks/hieght_slider_block.dart';
import 'package:bmi_calculator/blocks/measurment_container_block.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:bmi_calculator/screens/weight_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HieghtScreen extends StatelessWidget {

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
                    Text('HIGHT',
                      style: TextStyle(fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 20,),
                MeasurmentBlock(),
                Container(
                    height: 450,
                    child: HieghtSliderBlock()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        cubit.setHeight(0);
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_back, color: Colors
                              .blueAccent,),
                          Text(' BACK', style: TextStyle(
                              color: Colors.blueAccent),)
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                              width: 2,
                              color: Colors.blueAccent
                          )
                      ),),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                                WeightScreen()));
                        cubit.setMeasurmentKind(MeasurmentKind.weight);
                      },
                      child: Row(
                        children: [
                          Text('NEXT ', style: TextStyle(color: Colors.white),),
                          const Icon(Icons.arrow_forward, color: Colors.white,),

                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,

                      ),),

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
