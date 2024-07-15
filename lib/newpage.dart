import 'package:flutter/material.dart';
import 'package:myfirstapplication/bottomnavigation.dart';
import 'package:myfirstapplication/page1.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("hiiii"),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: Column(
          children: [
           const Text("hallo world"),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.blue[300],
                ),
                width: 100,
                height: 100,
                child:  Center(child: Text("hello")),
              ),
              
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.blue[300],
                ),
                width: 100,
                height: 100,
                child:  Center(child: Text("hello")),
                
              ),
             TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>Bottomnavigation()));
             }, child:const Text("click here")) 
          ],
          
        
          
             
            )
          

        ),
      );
      
    
  }
}
