import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          color: ColorApp.primary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/doa');
                },
                child: const Column(
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
              ),

              const SizedBox(width: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/zakat');
                },
                child: const Column(
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
              ),

              const SizedBox(width: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-sholat');
                },
                child: const Column(
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
              ),
              const SizedBox(width: 10,),
              const Column(
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
          CardMenus(),
          // CardMenus(),
        ],
      ),
    );
  }
}