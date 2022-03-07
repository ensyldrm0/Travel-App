import 'package:flutter/material.dart';
import 'main_page.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //FOTOĞRAF
          Container(
            width: 522.65,
            height: 325.31,
            padding: const EdgeInsets.only(bottom: 30),
            child: Image.asset(
              "assets/images/humans.png",
              fit: BoxFit.fill,
            ),
          ),
          //BAŞLIK
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text(
              "Discover a Hotel&Resort to Book a Suitable Room",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFF2D2D2D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //YAZI
          const Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: Text(
              "The hotel and resort business is one of the best and loyal business in the global market. We are the agency that helps to book you a good room in a suitable palace at a reasonable price.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF595959),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          //YER İMLECİ

          //BUTON
          Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/main");
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.arrow_forward,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                label: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    primary: const Color(0xFFF05A22),
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
        ],
      ),
    );
  }
}
