import 'package:flutter/material.dart';
import 'package:grimm/Wigdets/Button.dart';

import '../theme.dart';

class NewReview extends StatelessWidget {
  //const NewReview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "About Us",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(
              "Leave a Review",
              style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Leave a Review",
                      style: style2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "3.5",
                        style: style1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        "Based on 2 reviews",
                        style: style4,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "DJ Ryno",
                      style: style2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Record Producer",
                      style: style3,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Write Your Review",
                      style: style2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "400 characters remaining",
                      textAlign: TextAlign.right,
                      style: style4,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: Button(
                background: Colors.red,
                foreground: Colors.white,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewReview(),
                    ),
                  );
                },
                text: "Submit Review"),
          ),
        ],
      ),
    );
  }
}
