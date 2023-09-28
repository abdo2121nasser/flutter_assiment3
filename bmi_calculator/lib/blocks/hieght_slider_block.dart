import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


class HieghtSliderBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCalculatorCubit, BmiCalculatorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=BmiCalculatorCubit.get(context);
        return SfSlider.vertical(
          min: 0.0,
          max: cubit.maxHieght,
          value: cubit.getHeight(),
          interval: cubit.maxHieght==200?10:0.2,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          minorTicksPerInterval: 3,
          onChanged: (dynamic value) {
            cubit.setHeight(value);

          },
        );
      },
    );
  }
}
