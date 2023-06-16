import 'package:flutter/material.dart';
import '/Wigdets/Button.dart';

import 'Setting.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    // width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/deal.png",
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "My Rewards",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    // width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/product.png",
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "My Products",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    // width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/support.png",
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Support",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    // width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/notification.png",
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: Container(
                      // width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    // width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/heart.png",
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Favourites",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Button(
                background: Colors.red,
                foreground: Colors.white,
                ontap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => NewReview(),
                  //   ),
                  // );
                },
                text: "Logout")
          ],
        ),
      ),
    );
  }
}
