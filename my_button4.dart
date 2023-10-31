import 'package:flutter/material.dart';

class MyButton4 extends StatelessWidget {
  final Function()? onTap;
  const MyButton4({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child:
                Text('Make An Account', style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
