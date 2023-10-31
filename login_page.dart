// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:studysesh/components/my_button.dart';
import 'package:studysesh/components/my_button2.dart';
import 'package:studysesh/components/my_button3.dart';
import 'package:studysesh/components/my_button4.dart';
import 'package:studysesh/components/my_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studysesh/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  // text editing conrolers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  void signUserIn() {}
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        )
      ],
    ).animate(_controller);
    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomLeft),
          weight: 1,
        )
      ],
    ).animate(_controller);

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(237, 252, 252, 252),
        body: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFEEEEEE),
                        Color(0xFF60A36A),
                        Color(0xFF6D9973)
                      ],
                      begin: _topAlignmentAnimation.value,
                      end: _bottomAlignmentAnimation.value,
                    ),
                  ),
                  child: Center(
                      child: Column(children: [
                    const SizedBox(
                      height: 50,
                    ),

                    //logo

                    //welcome back message?
                    Text("Welcome!",
                        style: GoogleFonts.delaGothicOne(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        )),

                    const SizedBox(
                      height: 25,
                    ),

                    //username textfield
                    MyTextField(
                      controller: usernamecontroller,
                      hintText: 'Username',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //password
                    MyTextField(
                      controller: passwordcontroller,
                      hintText: 'Password',
                      obscureText: true,
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // forgot password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot Password?',
                              style: TextStyle(color: Colors.lightGreen)),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    //sign in button
                    MyButton(
                      onTap: signUserIn,
                    ),
                    // or continue with
                    const SizedBox(
                      height: 50,
                    ),

                    Row(
                      // google+apple sign ins
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text('Or continue with'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton2(
                            onTap: signUserIn,
                          ),
                          // or continue with

                          const SizedBox(
                            height: 10,
                          ),

                          MyButton3(
                            onTap: signUserIn,
                          ),

                          const SizedBox(
                            height: 5,
                          ),

                          MyButton4(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                            // or continue with
                          })
                        ],
                      ),
                    ),

                    // no account? make one now
                  ])));
            }));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
