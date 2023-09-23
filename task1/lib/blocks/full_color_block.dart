import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/cubits/color_generator_cubit.dart';
import 'package:task1/cubits/color_generator_cubit.dart';

import 'container_color.dart';


class FullColorBlock extends StatelessWidget {
  final int index;

  FullColorBlock({required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ColorGeneratorCubit, ColorGeneratorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=ColorGeneratorCubit.get(context);
        return Container(
          width: 150,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ContainerColorBlock(color:cubit.color[index]),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black87)
                ),
                child: Text('0xFF${cubit.hexaDecimal[index]}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        );
      },
    );
  }
}
