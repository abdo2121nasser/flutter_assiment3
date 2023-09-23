import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'color_generator_state.dart';

class ColorGeneratorCubit extends Cubit<ColorGeneratorState> {
  ColorGeneratorCubit() : super(ColorGeneratorInitial());

  List<Color> color=[Colors.green,Colors.green,Colors.green,Colors.green,];
  List<String> hexaDecimal=['4CAF50','4CAF50','4CAF50','4CAF50',];
   int? hexa;
  static ColorGeneratorCubit get(context)=>BlocProvider.of(context);
  Color generateRandomColor() {
    Random random = Random();
    // Pick a random number in the range [0.0, 1.0)
    double randomDouble = random.nextDouble();
   emit(generateRandomColorState());
    hexa=(randomDouble * 0xFFFFFF).toInt();

    return Color(hexa!).withOpacity(1.0);
  }

  int getHexaDecimal(int index)
  {
    emit(getHexaDecimalState());
    return hexa!;
  }


}
