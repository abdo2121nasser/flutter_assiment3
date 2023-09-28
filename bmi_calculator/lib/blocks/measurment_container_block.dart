import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/blocs/bmi_calculator_cubit.dart';
import 'package:bmi_calculator/enums/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MeasurmentBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCalculatorCubit, BmiCalculatorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=BmiCalculatorCubit.get(context);
        return Container(
          child: cubit.measurmentKind==MeasurmentKind.hieght?
          cubit.hieghtScale==HeightScale.cm?
          Container(
            width: 150,height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black87,width: 1),
                color: Colors.white
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 90,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black87.withOpacity(0.3),width: 1),
                      color: Colors.blueAccent
                  ),
                  child: Text(cubit.textScale1,
                    style: const TextStyle(color: Colors.white,fontSize: 15),),
                ),
                InkWell(
                  onTap: (){

                    cubit.changeAllHieghtScales(HeightScale.meter);

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(cubit.textScale2,
                      style: TextStyle(color: Colors.black87,fontSize: 15),),
                  ),
                ),

              ],
            ),
          )
              :
          Container(
            width: 160,height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black87,width: 1),
                color: Colors.white
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    cubit.changeAllHieghtScales(HeightScale.cm);

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18,left: 28),
                    child: Text(cubit.textScale1,
                      style: TextStyle(color: Colors.black87,fontSize: 15),),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 90,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black87.withOpacity(0.3),width: 1),
                      color: Colors.blueAccent
                  ),
                  child: Text(cubit.textScale2,
                    style: TextStyle(color: Colors.white,fontSize: 15),),
                ),


              ],
            ),
          )
              :
          cubit.weightScale==WeightScale.pound?
          Container(
            width: 150,height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black87,width: 1),
                color: Colors.white
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 90,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black87.withOpacity(0.3),width: 1),
                      color: Colors.blueAccent
                  ),
                  child: Text(cubit.textScale1,
                    style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
                InkWell(
                  onTap: (){

                    cubit.changeAllWeightScales(WeightScale.kg);


                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(cubit.textScale2,
                      style: TextStyle(color: Colors.black87,fontSize: 15),),
                  ),
                ),

              ],
            ),
          )
              :
          Container(
            width: 160,height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black87,width: 1),
                color: Colors.white
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){

                    cubit.changeAllWeightScales(WeightScale.pound);


                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 11,left: 15),
                    child: Text(cubit.textScale1,
                      style: TextStyle(color: Colors.black87,fontSize: 15),),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 90,height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black87.withOpacity(0.3),width: 1),
                      color: Colors.blueAccent
                  ),
                  child: Text(cubit.textScale2,
                    style: TextStyle(color: Colors.white,fontSize: 15),),
                ),


              ],
            ),
          )

        );
      },
    )

    ;
  }
}
