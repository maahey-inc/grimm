import 'package:flutter/material.dart';
import 'package:grimm/Screens/Personalinformation.dart';

class Setting extends StatelessWidget {
  // const Setting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Curtis \nKnight",
                            style: TextStyle(
                              //color: Colors.red,
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 35,
                            //color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Personalinformation(),
                          ),
                        );
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
                                  Icons.account_circle_outlined,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Personal Information",
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
                                Icons.security_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Security",
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
                                Icons.notifications_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Notifications",
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
                                Icons.credit_card_rounded,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Payment",
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
                                Icons.settings_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Preferences",
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
