import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class WeightRoundedSliderBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCalculatorCubit, BmiCalculatorState>(
      builder: (context, state) {
        var cubit=BmiCalculatorCubit.get(context);
        return Container(
          height: 300, width: 250,
          child: SleekCircularSlider(
              initialValue: 0,
              innerWidget: (percentage) => Center(
                  child: Text('${cubit.getweight().toStringAsFixed(2)} ${cubit.weightScale==WeightScale.kg?'KG':'Pound'}',
              style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),)
              ),
              appearance: CircularSliderAppearance(
                  size: 200,
                  customWidths: CustomSliderWidths(
                    handlerSize: 10,
                    trackWidth: 20,)
              ),
              onChange: (double value) {

                cubit.setweight((value / 100) * cubit.maxWeight);

              }),
        );
      },
    );
  }
}
