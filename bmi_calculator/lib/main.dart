import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/screens/gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BmiCalculator());
}


class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>BmiCalculatorCubit())
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GenderScreen(),
        ),
      ),
    );
  }
}
