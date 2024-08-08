// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key, required String title});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 183, 237),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 184, 183, 237),
        title: const Text(
          "وَمَنْ يَتَّقِ اللَّهَ يَجْعَلْ لَهُ مِنْ أَمْرِهِ يُسْرًا",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.height / 1.50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 184, 183, 237),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          color: Colors.white,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -0),
                    child: Container(
                      width: 170,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 183, 237),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 9),
                                blurRadius: 20,
                                color: Colors.white),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => Counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 162, 161, 234),
                                shape: BoxShape.circle,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () => reset(),
                                child: Icon(Icons.wifi_protected_setup),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.purple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
