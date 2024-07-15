import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirstapplication/custom_widget/custom_card.dart';

class Andesmountain extends StatefulWidget {
  const Andesmountain(
      {super.key,
      required this.buttonColor,
      required this.carData1,
      required this.buttonName,
      required this.carData});
  final Map carData;
  final Map carData1;
  final String buttonName;
  final Color buttonColor;

  @override
  State<Andesmountain> createState() => _AndesmountainState();
}

class _AndesmountainState extends State<Andesmountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(children: [
                CustomCard(
                  buttonColor: widget.buttonColor,
                  buttonName: "Name",
                  carData: widget.carData,
                  carData1: widget.carData1,
                ),
                SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "OverView",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Details")
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.timer),
                      Text("8 hours"),
                      Spacer(),
                      Icon(Icons.cloud),
                      Text("16 C"),
                      Spacer(),
                      Icon(Icons.star),
                      Text("4.5"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white38),
                  width: 400,
                  height: 600,
                  child: Text(
                    "fghhjjktftfjhklklgyugyhgjhkj",
                    style: TextStyle(color: Colors.black12),
                  ),
                ),
              ]),
              // Stack(children: [
              //   Container(
              //     decoration: (BoxDecoration(
              //         color: Color.fromARGB(255, 244, 240, 240),
              //         borderRadius: BorderRadius.circular(20))),
              //     height: 350,
              //     width: 350,
              //   ),
              //   Positioned(
              //       bottom: 50,
              //       left: 6,
              //       right: 6,
              //       child: Container(
              //           decoration:const BoxDecoration(
              //               color: Colors.red,
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(10))),
              //                   width: 400,
              //                   height: 50,
              //           child: Center(
              //             child: TextButton(
              //                 onPressed: () {},
              //                 child: Padding(
              //                   padding:  EdgeInsets.all(8.0),
              //                   child: Text("press"),
              //                 )),
              //           ),
              //               ))
              // ])
              )),
              bottomNavigationBar:  Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
    );
    //       bottomNavigationBar:Padding(padding: EdgeInsets.all(8),

    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           backgroundColor: Colors.black
    //         ),
    //         onPressed: (){}, child: Row(children: [
    //           SizedBox(width: 150,),
    //         Text("Book Now",style: TextStyle(
    //           color: Colors.white
    //         ),),
    //         SizedBox(width: 30,),
    //         Icon(Icons.send,
    //         color: Colors.white,),
    //       ],),) ,
    // ));
  }
}
