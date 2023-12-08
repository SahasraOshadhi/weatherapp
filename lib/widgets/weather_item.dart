
import 'package:flutter/material.dart';

class weatherItem extends StatelessWidget {
  const weatherItem({
    Key? key,
    required this.value, required this.text, required this.unit, required this.imageUrl,
  }) : super(key: key);

  final int value;
  final String text;
  final String unit;
  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style: const TextStyle(
          color: Colors.black54,
          fontSize: 17,
        ),),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 90,
          width: 90,
          decoration: const BoxDecoration(
            color: Color(0xffE0E8FB),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Image.asset(imageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(value.toString() + unit, style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),)
      ],
    );
  }
}