import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/screens/screen1.dart';

import 'cubits/color_generator_cubit.dart';

void main() {
  runApp(ColorGeneratorApp());
}


class ColorGeneratorApp extends StatelessWidget {
  const ColorGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>ColorGeneratorCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Screen1(),
        ),
      ),
    );
  }
}
