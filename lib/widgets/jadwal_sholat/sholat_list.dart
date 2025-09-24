import 'package:flutter/material.dart';

class SholatList extends StatelessWidget {
  const SholatList({super.key, required this.sholat, required this.time});

  final String sholat;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          time,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        const Spacer(),
        Text(
          time,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Image.asset("assets/images/img_clock.png"),
      ],
    );
  }
}
