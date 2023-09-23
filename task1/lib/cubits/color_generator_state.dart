part of 'color_generator_cubit.dart';

@immutable
abstract class ColorGeneratorState {}

class ColorGeneratorInitial extends ColorGeneratorState {}

class generateRandomColorState extends ColorGeneratorState {}
class getHexaDecimalState extends ColorGeneratorState {}