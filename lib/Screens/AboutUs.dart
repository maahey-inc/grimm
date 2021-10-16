import 'package:flutter/material.dart';
import 'package:grimm/Screens/NewReview.dart';
import 'package:grimm/Wigdets/Button.dart';

class AboutUs extends StatelessWidget {
  //const AboutUs({ Key? key }) : super(key: key);
  TextStyle style2 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  TextStyle style1 = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  TextStyle style3 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  TextStyle style4 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    // fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
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
                      "Testimonials",
                      style: style2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Our goal is to help the music industry collaborate in the same environment.",
                      style: style1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s",
                      style: style3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/seed/picsum/200/300",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: style3,
                            ),
                            Text(
                              "Song Producer",
                              style: style4,
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      // thickness: 3,
                      color: Colors.white,
                      height: 50,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s",
                      style: style3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/seed/picsum/200/300",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: style3,
                            ),
                            Text(
                              "Song Producer",
                              style: style4,
                            ),
                          ],
                        )
                      ],
                    )
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
                text: "Leave a Review"),
          ),
        ],
      ),
    );
  }
}
