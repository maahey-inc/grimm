import 'package:flutter/material.dart';
import '/Screens/Signup.dart';
import 'package:provider/provider.dart';

import '../Providers/Signupprovider.dart';

enum User { prod, user }

class Signupoption extends StatelessWidget {
  //const Signupoption({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var providervar = Provider.of<Signupprovider>(context);
    var providerfunc = Provider.of<Signupprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "What type of service do you offer?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      providerfunc.changeuser(User.prod);
                    },
                    child: AnimatedContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "I want to upload music",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: providervar.usertype == User.prod
                                    ? Colors.white
                                    : Colors.grey[600],
                                //fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Image.asset(providervar.usertype == User.prod
                                ? "assets/images/cloudenabled.png"
                                : "assets/images/clouddisabled.png")
                          ],
                        ),
                      ),
                      duration: Duration(milliseconds: 200),
                      height: providervar.usertype == User.prod ? 230 : 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: providervar.usertype == User.prod
                            ? Colors.red
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      providerfunc.changeuser(User.user);
                    },
                    child: AnimatedContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "I want to access business",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: providervar.usertype == User.user
                                    ? Colors.white
                                    : Colors.grey[600],
                                //fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Image.asset(
                              providervar.usertype == User.user
                                  ? "assets/images/caseenabled.png"
                                  : "assets/images/casedisabled.png",
                              height: 75,
                            )
                          ],
                        ),
                      ),
                      duration: Duration(milliseconds: 200),
                      height: providervar.usertype == User.user ? 230 : 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: providervar.usertype == User.user
                            ? Colors.red
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Select",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                style: ButtonStyle(
                  //elevation: 5.0,

                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
