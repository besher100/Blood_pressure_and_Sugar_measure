import 'package:flutter/material.dart';

class SugarResult extends StatelessWidget {
  // const SugarResult({Key? key}) : super(key: key);
  final double bloodValue;

  const SugarResult({super.key,
    required this.bloodValue
});
  @override
  Widget build(BuildContext context) {
    String result="";
    Color? color=Colors.green;
    if (bloodValue>=70 && bloodValue<=100){
      result="your blood level is normal, congarts you are healthy";
       color=Colors.green;
    }else if(bloodValue>=101 && bloodValue<=126){
      result="your blood level is higher than normal, it is a sign of early diabetes ,to be sure "
          "take another test post-mealt, 140-200 mg/dl value after two hours of consuming glucose is an indication of this condition.  ";
      color=Colors.amber;
    }else if (bloodValue>126 ){
      result="iam sorry to tell you that you have diabetes,"
          "For the fasting sugar test, over 126 mg/dl value is an evidence of established diabetes."
          " For the post-meal test, o"
          "ver 200 mg/dl value after two hours of consuming glucose is a confirmation of having this health condition.";
    color=Colors.red;
    }else if (bloodValue<70 ){
      result="iam sorry to tell you that you have diabetes,"
          "For the fasting sugar test, lower than 70 mg/dl value is an evidence of established diabetes."
          " For the post-meal test.";
      color=Colors.red;
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Blood Sugar Result")),
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(


              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 700,
                     width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(result,style: TextStyle(color: color,fontSize: 32,fontWeight: FontWeight.bold),),
                    ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
