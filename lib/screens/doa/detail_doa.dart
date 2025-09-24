// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bitaqwa_app/utils/colors.dart';

class DetailDoa extends StatelessWidget {
  const DetailDoa({
    super.key,
    required this.title,
    required this.arabicText,
    required this.translation,
    required this.reference,
  });

  final String title;
  final String arabicText;
  final String translation;
  final String reference;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Doa apa gitu",
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

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_detail_doa.png"),
            fit: BoxFit.cover
          )
        ),

        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorApp.white,
              boxShadow: const [BoxShadow(
                color: ColorApp.grey,
                blurRadius: 5,
                spreadRadius: 2,
              )],
            ),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorApp.text,
                  ),
                ),

                const SizedBox(height: 16,),

                Text(
                  arabicText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: ColorApp.text,
                  ),
                ),

                const SizedBox(height: 16,),

                Text(
                  translation,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[300],
                  ),
                ),

                const SizedBox(height: 16,),

                Text(
                  reference,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ),
        ),

      ),

    );
  }
}
