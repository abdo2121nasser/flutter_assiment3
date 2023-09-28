import 'package:bmi_calculator/enums/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_calculator_state.dart';

class BmiCalculatorCubit extends Cubit<BmiCalculatorState> {
  BmiCalculatorCubit() : super(BmiCalculatorInitial());
static BmiCalculatorCubit get(context)=>BlocProvider.of(context);
  double height=0;
  double weight=0;
  double? bmiValue;
  String? bodyWeight;
  HeightScale hieghtScale=HeightScale.cm;
  WeightScale weightScale=WeightScale.pound;
  double maxHieght=200;
  double maxWeight=440;
  MeasurmentKind measurmentKind=MeasurmentKind.hieght;
  //todo on making next button change measurment kind
  String textScale1='cm',textScale2='meter';
  void setHeight(double height)
  {
    emit(setHeightState());
    this.height=height;

  }
  double getHeight()
  {
    emit(getHeightState());
   return height;
  }
  void setweight(double weight)
  {
    emit(setWeightState());
    this.weight=weight;

  }
  double getweight()
  {
    emit(getWeightState());
    return weight;
  }
  void changeAllHieghtScales(HeightScale scale)
  {
    hieghtScale=scale;
    if(scale==HeightScale.cm)
      {
        height*=100;
        maxHieght*=100;
      }
    else if(scale==HeightScale.meter)
      {
        height/=100;
        maxHieght/=100;
      }
    emit(changeAllHieghtScalesState());
  }
  void changeAllWeightScales(WeightScale scale)
  {
    weightScale=scale;
    if(scale==WeightScale.pound)
    {
      weight*=2.2;
      maxWeight*=2.2;
    }
    else if(scale==WeightScale.kg)
    {
      weight/=2.2;
      maxWeight/=2.2;
    }
    emit(changeAllWeightScalesState());
  }
  void setMeasurmentKind(MeasurmentKind kind)
  {
    measurmentKind=kind;
    if(kind==MeasurmentKind.hieght)
      {
        textScale1='cm';
        textScale2='meter';
      }
    else if(kind==MeasurmentKind.weight)
      {
        textScale1='pound';
        textScale2='kg';
      }
    emit(setMeasurmentKindState());
  }
  void setCorrectMeasurment()
  {
    if(HeightScale.cm==hieghtScale) {
      changeAllHieghtScales(HeightScale.meter);
    }
    if(WeightScale.pound==weightScale) {
      changeAllWeightScales(WeightScale.kg);
    }
    emit(setCorrectMeasurmentState());
  }
  double calculateBmiValue()
  {
    setCorrectMeasurment();
    if(weight==0 || height==0) {
      bmiValue=0.0;
      return bmiValue!;
    }
    bmiValue=weight/(height*height);
    emit(calculateBmiValueState());
    return bmiValue!;
  }

  String getBodyWeightName()
  {
    emit(getBodyWeightNameState());
    if(bmiValue! >=19 && bmiValue!<=24.9) {
      return 'Normal';
    } else if(bmiValue! >=25 && bmiValue!<=29.9) {
      return 'Overweight';
    } else if(bmiValue!>29.9) {
      return 'Obese';
    } else {
      return 'less weight';
    }

  }



}
