import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({Key? key}) : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Column(children: [
              //APPBAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
 //GERİ DÖN -->            
         
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //FOTOĞRAFLAR
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/hotel.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 280,
                    /*child: Text("Misty Rock Resort",style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                      ),*/
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            "Misty Rock Resort",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: const [
                              Icon(Icons.place, size: 10, color: Colors.white),
                              Text(
                                "Wayanad",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFDFDFDF),
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(width: 15),
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/ilkk.png"),
                  ),
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/ikik.png"),
                  ),
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/uck.png"),
                  ),
                  Stack(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/sonk.png"),
                      ),
                      Positioned(
                          left: 20,
                          top: 25,
                          child: Text(
                            "10+",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //YAZI
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.shade900),
                        child: Padding(
                          padding: const EdgeInsets.only(top:7 ),
                          child: Text("Detail",style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          ),
                        ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                         child:Padding(
                          padding: const EdgeInsets.only(top:7 ),
                          child: Text("Review",style: TextStyle(color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                  ),
                  )],
              ),
              SizedBox(height: 20,),
              Text("Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis.",textAlign: TextAlign.justify,
              style: TextStyle(fontSize:12 ),
              ),
//READ MORE EKLE -->          
              //FİYAT
              SizedBox(height: 20,),
              Row(children: [
                Text("₺6.036",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                Text("/person"),
                SizedBox(width: 30,),
                Container(width: 130,height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange.shade900,
                  boxShadow: [
                              BoxShadow(
                                color: Colors.orange.shade900,
                                blurRadius: 10,
                                offset: const Offset(0, 2),
                              )
                            ]
                ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Continue",style: TextStyle(fontSize:18,color: Colors.white),),
                     SizedBox(width: 5,),
                     Icon(Icons.arrow_forward,color: Colors.white,)
                   ],
                 ),
                )
              ],)
            ]),
          ),
        ),
      ),
    );
  }
}
