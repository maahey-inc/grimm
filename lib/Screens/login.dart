import 'package:flutter/material.dart';
import 'package:grimm/Screens/Productdescription.dart';
import 'package:grimm/Screens/Signup.dart';
import 'package:grimm/Wigdets/Textfield.dart';

class Login extends StatelessWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Login",
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
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Fotgot Password?",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
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
                padding: const EdgeInsets.all(15),
                child: Text('Log In'),
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
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                child: Text(
                  "New Here? Sign Up",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
