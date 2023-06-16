import 'package:flutter/material.dart';
import '../Providers/Signupprovider.dart';
import '/Screens/EmailConfirmation.dart';
import '/Screens/login.dart';
import '/Wigdets/Textfield.dart';
import 'package:provider/provider.dart';

import 'Signupoption.dart';

class Signup extends StatelessWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var providervar = Provider.of<Signupprovider>(context);
    return Scaffold(
      backgroundColor: providervar.usertype == User.prod
          ? Color(0xffBB0611)
          : Color(0xff2A2D36),
      appBar: AppBar(
        backgroundColor: providervar.usertype == User.prod
            ? Color(0xffBB0611)
            : Color(0xff2A2D36),
        title: Text(
          "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                providervar.usertype == User.prod
                    ? "Create Producer Account"
                    : "Create Business Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 50,
                child: Textfield(
                  hinttext: "Name",
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
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: Textfield(
                  hinttext: "Confirm Password",
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign Up",
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
                          builder: (context) => EmailConfirmation(),
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
                        backgroundColor: MaterialStateProperty.all<Color>(
                          providervar.usertype == User.prod
                              ? Color(0xff2A2D36)
                              : Color(0xffBB0611),
                        ),
                        shape: MaterialStateProperty.all<CircleBorder>(
                          CircleBorder(),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
