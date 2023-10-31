import 'package:flutter/material.dart';

class MyButton3 extends StatelessWidget {
  final Function()? onTap;
  const MyButton3({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(25.0),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.circular(8)),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Sign In With ', style: TextStyle(color: Colors.black)),
            Text(
              'G',
              style: TextStyle(color: Colors.blue),
            ),
            Text('o', style: TextStyle(color: Colors.red)),
            Text('o', style: TextStyle(color: Colors.yellow)),
            Text('g', style: TextStyle(color: Colors.blue)),
            Text('l', style: TextStyle(color: Colors.green)),
            Text('e', style: TextStyle(color: Colors.red))
          ]),
        ));
  }
}
