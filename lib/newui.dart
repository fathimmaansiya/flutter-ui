import 'package:flutter/material.dart';
import 'package:myfirstapplication/andesmountain.dart';
import 'package:myfirstapplication/custom_widget/custom_card.dart';

class Newui extends StatefulWidget {
  const Newui({super.key});

  @override
  State<Newui> createState() => _NewuiState();
}

class _NewuiState extends State<Newui> {
  int _inDex = 0;
  List<Widget> mynavigationbar = [
    Text("home"),
    Text("timer"),
    Text("like"),
    Text("profile"),
  ];
  final List<Map<String, String>> _carddetails = [
    {"name": "Mountain Fuji,", "place": "Tokio "},
    {"name": "Andes Mountain,", "place": "South "},
    {"name": "mountain fuji,", "place": "tokio "},
  ];
  final List<Map<String, String>> _carddetails1 = [
    {"place": "Tokio,", "country": "Japan"},
    {"place": "South,", "country": "America"},
    {"place": "tokio,", "country": "America"},
  ];
  void _ontap(int index) {
    setState(() {
      _inDex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hi, DAvid",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text("Explore the world"),
                    ],
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person),
                  )
                ],
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search places",
                  suffixIcon: Icon(Icons.tune),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "popular places",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: Text("View all")),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Most Viewed",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  Container(
                      child: TextButton(
                    onPressed: () {},
                    child: Text("Nearby"),
                  )),
                  Container(
                      child: TextButton(
                    onPressed: () {},
                    child: Text("Latest"),
                  )),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        child: CustomCard(
                          buttonColor: Color.fromARGB(255, 83, 140, 62),
                          buttonName: '',
                          carData: _carddetails[0],
                          carData1: _carddetails1[0],
                        ),
                        onTap: () {
                          print("hii");
                        },
                      ),
                      GestureDetector(
                        child: CustomCard(
                          buttonColor: Color.fromARGB(255, 83, 140, 62),
                          buttonName: "",
                          carData: _carddetails[1],
                          carData1: _carddetails1[1],
                        ),
                        onTap: () {
                          print(_carddetails[1]);
                          print(_carddetails1[1]);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Andesmountain(
                                      buttonColor:
                                          Color.fromARGB(255, 83, 140, 62),
                                      carData1: _carddetails1[1],
                                      buttonName: "buttonName",
                                      carData: _carddetails[1])));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.timer, color: Colors.black), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_rounded, color: Colors.black),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black), label: ""),
          ],
          currentIndex: _inDex,
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          onTap: _ontap,
        ));
  }
}
