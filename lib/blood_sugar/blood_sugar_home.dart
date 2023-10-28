import 'package:blood_preasure_and_sugar_measure/blood_sugar/blood_sugar_result.dart';
import 'package:flutter/material.dart';

class SugarHome extends StatefulWidget {
  const SugarHome({Key? key}) : super(key: key);

  @override
  State<SugarHome> createState() => _SugarHomeState();
}

class _SugarHomeState extends State<SugarHome> {
  double bloodValue=100;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Blood Sugar measure')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(height: 250,width: 250, image:AssetImage( "assets/images/diabetes-care.png"),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.brown[300]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Enter Your Fasting Blood Sugar (FBS) Reading :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("${bloodValue.round()}",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Colors.white),),
                            const SizedBox(width: 5,),
                            const Text("mg/dL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                          ],),
                        Slider(value: bloodValue,
                          max: 450.0,
                          min: 45.0,
                          onChanged: (value) {
                            setState(() {
                              bloodValue=value;
                            });
                          },),

                      ]),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(

                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SugarResult(bloodValue: bloodValue,),));

                  }, child: const Text("Measure",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                ),
              )


            ],
          ),
        ),
      ),
    ));
  }
}
