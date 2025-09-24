import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String name;
  final String time;

  const Time({
    super.key,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(fontFamily: "PoppinsRegular"),
        ),
        const Spacer(),
        Text(
          time,
          style: const TextStyle(fontFamily: "PoppinsRegular"),
        ),
        const SizedBox(
          width: 16,
        ),
        Image.asset("assets/images/img_clock.png"),
      ],
    );
  }
}
