import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_header_doa 2.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                ),
                child: const Text(
                  "Assalamualaikum Kevin",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              "Subuh",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              "04:48",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_rounded),
                Text(
                  "Berjo, Karanganyar",
                  style: TextStyle(
                    fontSize: 12
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget CardMenus() {
      return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_doa 1.png"),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Doa-doa",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_jadwal_sholat.png"),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Jadwal Sholat",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_video_kajian.png"),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Kajian",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_zakat.png"),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Zakat",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }




    Widget Menus() {
      return Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorApp.primary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_doa 1.png"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "Doa-doa",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_jadwal_sholat.png"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "Jadwal Sholat",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_video_kajian.png"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "Kajian",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/ic_menu_zakat.png"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "Zakat",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Header(),
          const SizedBox(height: 30,),
          Menus(),
          // CardMenus(),
        ],
      ),
    );
  }
}