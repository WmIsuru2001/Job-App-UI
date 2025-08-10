import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Icon(Icons.menu),
        ),
        Text(
          "Job Creatuve",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(
                "https://hips.hearstapps.com/hmg-prod/images/maggie-lindemann-pretty-girl-1475155655.jpg?crop=1.00xw:0.668xh;0,0&resize=1200:*",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
