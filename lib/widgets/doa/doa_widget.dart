import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';

class doaItem extends StatelessWidget {
  const doaItem({
    super.key, required this.imagesrc, required this.titlesrc, required this.onTap,
  });

  final String imagesrc;
  final String titlesrc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorApp.white,
          boxShadow: [BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 10,
            spreadRadius: 1
          )],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                image: AssetImage("assets/images/ic_doa_${imagesrc} 1.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 6,),
            Text(
              titlesrc,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}