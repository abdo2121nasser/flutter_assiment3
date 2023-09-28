part of 'bmi_calculator_cubit.dart';

abstract class BmiCalculatorState {}

class BmiCalculatorInitial extends BmiCalculatorState {}
class getHeightState extends BmiCalculatorState {}
class setHeightState extends BmiCalculatorState {}
class getWeightState extends BmiCalculatorState {}
class setWeightState extends BmiCalculatorState {}
class changeAllHieghtScalesState extends BmiCalculatorState {}
class changeAllWeightScalesState extends BmiCalculatorState {}
class setMeasurmentKindState extends BmiCalculatorState {}
class setCorrectMeasurmentState extends BmiCalculatorState {}
class calculateBmiValueState extends BmiCalculatorState {}
class getBodyWeightNameState extends BmiCalculatorState {}

