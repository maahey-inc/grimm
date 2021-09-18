import 'package:flutter/material.dart';
import 'package:grimm/Wigdets/Textfield.dart';

class Signup extends StatelessWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Signup",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 150,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: Textfield(
                hinttext: "First Name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Textfield(
                hinttext: "Last Name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Textfield(
                hinttext: "Email Address",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Textfield(
                hinttext: "Password",
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Fotgot Password?",
            //         style: TextStyle(
            //           color: Colors.red,
            //         ),
            //       )),
            // ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Sign Up'),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
