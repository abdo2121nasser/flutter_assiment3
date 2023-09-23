
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/blocks/full_color_block.dart';
import 'package:task1/cubits/color_generator_cubit.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ColorGeneratorCubit, ColorGeneratorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit=ColorGeneratorCubit.get(context);

          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // mainAxisExtent: 140,
                        crossAxisSpacing:10,
                        //  childAspectRatio: (1/.1),
                        mainAxisSpacing: 0),
                    itemBuilder: (_, index) => FullColorBlock(index: index),
                    itemCount:4,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(onPressed: () {
                   for(int i=0;i<4;i++)
                     {
                       cubit.color[i]=cubit.generateRandomColor();
                       cubit.hexaDecimal[i]=cubit.getHexaDecimal(i).toRadixString(16).toUpperCase();
                     }
                  },
                      child: const Text('Generate',
                        style: TextStyle(fontSize: 20),)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
