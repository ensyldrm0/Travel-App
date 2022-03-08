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
      backgroundColor: Colors.grey.shade300,
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
              const SizedBox(height: 20),

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
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        width: 250,
                        height: 43,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("Search here..."),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 44,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orange.shade900,
                        ),
                        child: const Icon(
                          Icons.format_list_bulleted,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/india.jpeg"),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/newyork.jpeg"),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/australia.jpeg"),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/poland.jpeg"),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),

              //OUR PROPERTİES
              Row(
                children: [
                  const Text(
                    "Our Properties",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(width: 60),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hotel.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 70),
                            child: Text(
                              "Misty Rock Resort",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Icon(Icons.place,
                                    size: 10, color: Colors.orange.shade900),
                                Text(
                                  "Wayanad",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF898989),
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                InkWell(
                                  onTap: () {
     //SAYFA GEÇİŞİ BURDA ->                               
                                  print("tıklandı");
                                  },
                                  child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.orange.shade900,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 10,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hoteltwo.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 70),
                            child: Text(
                              "Misty Rock Resort",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Icon(Icons.place,
                                    size: 10, color: Colors.orange.shade900),
                                Text(
                                  "Wayanad",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF898989),
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                InkWell(
                                  onTap: () {
     //SAYFA GEÇİŞİ BURDA ->                               
                                  print("tıklandı");
                                  },
                                  child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.orange.shade900,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 10,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
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
              icon: Icon(
                Icons.home,
                color: Colors.orange.shade900,
              ),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.orange.shade900,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.orange.shade900,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.orange.shade900,
            ),
            label: '',
          ),
        ]),
      ),
    ));
  }
}
