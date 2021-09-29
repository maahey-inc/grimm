import 'package:flutter/material.dart';
import 'package:grimm/Screens/Productdescription.dart';
import 'package:grimm/Screens/Signup.dart';
import 'package:grimm/Screens/Signupoption.dart';
import 'package:grimm/Wigdets/Textfield.dart';

class Login extends StatelessWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Login",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlutterLogo(
            //   size: 150,
            // ),
            Text(
              "GRIMM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/twister.png",
                height: 170,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Textfield(
              hinttext: "Email Address",
            ),
            SizedBox(
              height: 20,
            ),
            // SizedBox(
            //   height: 50,
            //   child:
            // ),
            Textfield(
              hinttext: "Password",
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Productdescription(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder(),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signupoption(),
                        ),
                      );
                    },
                    child: Text(
                      "New Here? Sign Up",
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
