import 'package:flutter/material.dart';

import 'blood_preasure_result.dart';

class PreasureHome extends StatefulWidget {
  const PreasureHome({Key? key}) : super(key: key);

  @override
  State<PreasureHome> createState() => _PreasureHomeState();
}

class _PreasureHomeState extends State<PreasureHome> {
  double high=120;
  double low=80;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Blood Presure measure',)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Please Enter Your Reading :",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
              const Image(height: 250,width: 250, image:AssetImage( "assets/images/blood-pressure.png"),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.brown[300]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Systolic (Higher Number):",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
                        Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("${high.round()}",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Colors.white),),
                            const SizedBox(width: 5,),
                            const Text("mmHg",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                          ],),
                        Slider(value: high,
                          max: 190.0,
                          min: 70.0,
                          onChanged: (value) {
                            setState(() {
                              high=value;
                            });
                          },),

                      ]),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.brown[300]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Diastolic (Lower Number) :",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
                        Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("${low.round()}",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Colors.white),),
                            const SizedBox(width: 5,),
                            const Text("mmHg",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                          ],),
                        Slider(value: low,
                          max: 100.0,
                          min: 40.0,
                          onChanged: (value) {
                            setState(() {
                              low=value;
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PressureResult(high: high,low: low),));

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
