import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 26, left: 42),
          child: Column(
            children: [
              //HELLO EKRANI
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/sam.jpeg"),
                  ),
                  const SizedBox(
                    width: 15.2,
                  ),
                  const Text(
                    "Hello , ",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    "Sam",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.notifications_none),
                  )
                ],
              ),
              const SizedBox(height: 35),

              //FIND YOUR STAY
              Column(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Find Your Stay",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        width: 279,
                        height: 43,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.search,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              //OUR PROPERTİES

              //POPOULAR
            ],
          ),
        ),
      ),

      //BOTTOM BAR
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: '',
              backgroundColor: Colors.grey.shade300),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              backgroundColor: Colors.red),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ]),
      ),
    ));
  }
}
