import 'package:flutter/material.dart';

class PressureResult extends StatelessWidget {
  // const PressureResult({Key? key}) : super(key: key);
final double high;
final double low;
const PressureResult({super.key,
  required this.high,
  required this.low,
});
  @override
  Widget build(BuildContext context) {
    String resultTitle="";
    String result="";
    Color color=Colors.green;
    if((high>=70 && high<=90) && (low>=40 && low<=60)){
      resultTitle="Your blood pressure reading is low";
      result="That’s usually not a problem,"
          " as it can be naturally low for some people."
          " But sometimes it can be caused by illness, a health condition or some medicines.";
      color=Colors.amber;
    }else if((high >90 && high <=120) &&(low>60 && low <=80)){
      resultTitle="Your blood pressure reading is healthy";
      color=Colors.green;

    }else if((high>120 && high<=140) ||(low>80 && low <=90)){
      resultTitle="Your blood pressure reading is high";
      color=Colors.amber;
    }else if((high>140 && high <=190) || (low>90 && low <=100)){
      resultTitle="Your blood pressure reading is very high";
      color=Colors.red;

    }
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Blood Pressure Result")),
      body:
      Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

              height: 700,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                  ,shape: BoxShape.rectangle,),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(resultTitle,style: TextStyle(color: color,fontSize: 40,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    Text(result,style: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

          ),
            ],
          ),
        ),
      ),
    ));
  }
}
