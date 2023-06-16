import 'package:flutter/material.dart';
import '/Screens/Home.dart';
import '/Screens/Productdescription.dart';

class EmailConfirmation extends StatelessWidget {
  // const EmailConfirmation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Thanks!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please Check Your Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/images/mail.png",
              height: 150,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'We sent an email to ',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'test@mail.com ',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'to verify your account.',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Go to email",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ButtonStyle(
                    //elevation: 5.0,

                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Login(),
                      //   ),
                      // );
                    },
                    child: Text(
                      "Resend Email",
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
    );
  }
}
