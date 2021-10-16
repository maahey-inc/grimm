import 'package:flutter/material.dart';
import 'package:grimm/theme.dart';

class Personalinformation extends StatelessWidget {
  // const Personalinformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Information",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: Text(
                "CK",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Curtis Knight",
              textAlign: TextAlign.center,
              style: style2,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Personalinformation(),
                        //   ),
                        // );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Shipping Address",
                                  style: TextStyle(
                                    //color: Colors.red,
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Email Address",
                                style: TextStyle(
                                  //color: Colors.red,
                                  fontSize: 16,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                  //color: Colors.red,
                                  fontSize: 16,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
