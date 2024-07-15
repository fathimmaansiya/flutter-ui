import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.buttonColor,
      required this.buttonName,
      required this.carData,
      required this.carData1});
  final Map carData;
   final Map carData1;
  final String buttonName;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
          image:const DecorationImage(image:AssetImage('assets/images/download.png'),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(25),
          color: buttonColor,
        ),
        width: 250,
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite),
                )
              ],
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20), 
                color: Colors.black45,),
                height:100,
                width: 250,
                
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            carData["name"],
                            style:const TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Text(
                          carData["place"],
                          style: TextStyle(color: Colors.white),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        Text(carData1["place"],style: TextStyle(color: Colors.white),),
                        Text(carData1["country"],style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  

          ])
              ),
            ),
          ],
        ),
      ),
    );
  }
}
