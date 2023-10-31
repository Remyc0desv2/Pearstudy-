import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studysesh/components/my_button.dart';
import 'package:studysesh/components/my_text_field.dart';
import 'package:flutter/cupertino.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key});

  // text editing conrolers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final namecontroller = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Center(
                child: Column(children: [
          const SizedBox(
            height: 50,
          ),

          //logo

          //welcome back message?

          Text("Make An Account!",
              textAlign: TextAlign.center,
              style: GoogleFonts.delaGothicOne(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              )),
          const SizedBox(
            height: 25,
          ),

          MyTextField(
              controller: namecontroller,
              hintText: 'Full Name',
              obscureText: false),
          SizedBox(
            height: 5,
          ),

          MyTextField(
              controller: emailcontroller,
              hintText: 'Email Or Phone',
              obscureText: false),
          SizedBox(
            height: 5,
          ),

          //username textfield
          MyTextField(
            controller: usernamecontroller,
            hintText: 'Username',
            obscureText: false,
          ),
          SizedBox(
            height: 5,
          ),

          //password
          MyTextField(
            controller: passwordcontroller,
            hintText: 'Password',
            obscureText: true,
          ),

          SizedBox(
            height: 5,
          ),

          SizedBox(
            height: 100,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(1969, 1, 1),
              onDateTimeChanged: (DateTime newDateTime) {
                // Do something
              },
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
        ]))));
  }
}
