import 'package:bitaqwa_app/screens/doa/list_doa.dart';
import 'package:bitaqwa_app/utils/colors.dart';
import 'package:bitaqwa_app/widgets/doa/doa_widget.dart';
import 'package:flutter/material.dart';

class HomeDoa extends StatelessWidget {
  const HomeDoa({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorApp.white,
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Doa-doa",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,),
          color: ColorApp.white,
        ),
      ),

      body: Column(
        children: [
          const Image(
            image: AssetImage("assets/images/bg_header_doa 2.png"),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                children: [
                  doaItem(imagesrc: "pagi_malam", titlesrc: "Pagi & Malam", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Pagi & Malam",),));},),
                  doaItem(imagesrc: "rumah", titlesrc: "Rumah", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Rumah",),));},),
                  doaItem(imagesrc: "makanan_minuman", titlesrc: "Makanan & Minuman", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Makanan & Minuman",),));},),
                  doaItem(imagesrc: "perjalanan", titlesrc: "Perjalanan", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Makanan & Minuman",),));},),
                  doaItem(imagesrc: "sholat", titlesrc: "Sholat", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Sholat",),));},),
                  doaItem(imagesrc: "etika_baik", titlesrc: "Etika Baik", onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ListDoa(category: "Etika Baik",),));},),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

