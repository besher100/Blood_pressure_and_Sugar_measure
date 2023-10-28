import 'package:blood_preasure_and_sugar_measure/blood_preasure/blood_preasure_home.dart';
import 'package:blood_preasure_and_sugar_measure/blood_sugar/blood_sugar_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Please choose what do you want to measure',
      style: TextStyle(fontSize: 16)),),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SugarHome(),));


          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber[600]),
                width: double.infinity,

                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(height: 250,width: 250, image:AssetImage( "assets/images/diabetes-care.png"),),
                      Text("Blood Sugar" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                )),
          ),
        ),
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PreasureHome(),));


          },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber[600]),
                    width: double.infinity,

                    child: const Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(height: 250,width: 250, image:AssetImage( "assets/images/blood-pressure.png"),),
                        Text("Blood Preasure" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    )),
              ),
            ),
      ]),
    ));
  }
}
