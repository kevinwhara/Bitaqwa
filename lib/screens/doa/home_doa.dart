import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeDoa extends StatelessWidget {
  const HomeDoa({super.key});

  @override
  Widget build(BuildContext context) {

    Widget TopBar() {
      return AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Doa-doa"
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      );
    }

    Widget HeroImage() {
      return Container(
        child: const Image(
          image: AssetImage("assets/images/bg_header_doa 2.png"),
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
      backgroundColor: ColorApp.white,
      body: ListView(
        children: [
          TopBar(),
          HeroImage(),
        ],
      ),
    );
  }
}