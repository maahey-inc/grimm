import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/Screens/Buysellscreen.dart';
import '/Wigdets/Button.dart';

class Productdescription extends StatelessWidget {
  //const Productdescription({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Grimm"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20),
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: GestureDetector(
          //             onTap: () {
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                   builder: (context) => BuySell(),
          //                 ),
          //               );
          //             },
          //             child: Container(
          //               child: Padding(
          //                 padding: const EdgeInsets.symmetric(horizontal: 20),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Text(
          //                       "\$177",
          //                       style: TextStyle(
          //                         color: Colors.white,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 20,
          //                       ),
          //                     ),
          //                     Row(
          //                       children: [
          //                         Padding(
          //                           padding: const EdgeInsets.symmetric(
          //                               horizontal: 10, vertical: 15),
          //                           child: Container(
          //                             width: 1,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                         Column(
          //                           mainAxisAlignment: MainAxisAlignment.center,
          //                           children: [
          //                             Text(
          //                               "Buy",
          //                               style: TextStyle(
          //                                 color: Colors.white,
          //                                 fontWeight: FontWeight.bold,
          //                                 fontSize: 20,
          //                               ),
          //                             ),
          //                             // SizedBox(
          //                             //   height: 1,
          //                             // ),
          //                             Text(
          //                               "Or Bid",
          //                               style: TextStyle(
          //                                 color: Colors.white,
          //                                 fontWeight: FontWeight.bold,
          //                                 //fontSize: 20,
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ),
          //               height: 60,
          //               decoration: BoxDecoration(
          //                 color: Colors.green[900],
          //                 borderRadius: BorderRadius.circular(10),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 15,
          //         ),
          //         Expanded(
          //           child: Container(
          //             child: Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 20),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Text(
          //                     "\$213",
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 20,
          //                     ),
          //                   ),
          //                   Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.symmetric(
          //                             horizontal: 10, vertical: 15),
          //                         child: Container(
          //                           width: 1,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                       Column(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           Text(
          //                             "Sell",
          //                             style: TextStyle(
          //                               color: Colors.white,
          //                               fontWeight: FontWeight.bold,
          //                               fontSize: 20,
          //                             ),
          //                           ),
          //                           // SizedBox(
          //                           //   height: 1,
          //                           // ),
          //                           Text(
          //                             "Or Ask",
          //                             style: TextStyle(
          //                               color: Colors.white,
          //                               fontWeight: FontWeight.bold,
          //                               //fontSize: 20,
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //             height: 60,
          //             decoration: BoxDecoration(
          //               color: Colors.red,
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Divider(
          //   color: Colors.grey[50],
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Music/Song Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.share,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Composer/Writer",
                    style: TextStyle(
                      color: Color(0xffBB0611),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    //width: getProportionateScreenWidth(238),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://i1.sndcdn.com/artworks-000220516310-6i3ate-t500x500.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Product Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       padding: EdgeInsets.all(10),
                  //       color: Colors.red,
                  //       child: Text(
                  //         "Product Details",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Genre",
                        style: TextStyle(
                          color: Color(0xffBB0611),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Pop",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Length",
                        style: TextStyle(
                          color: Color(0xffBB0611),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "3:24",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Starting Price",
                        style: TextStyle(
                          color: Color(0xffBB0611),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$100",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Release Date",
                        style: TextStyle(
                          color: Color(0xffBB0611),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "21/04/26",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Color(0xffBB0611),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                      color: Colors.white,
                      //fontSize: 16,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                      background: Colors.red,
                      foreground: Colors.white,
                      ontap: () {},
                      text: "Buy It Now"),
                  SizedBox(
                    height: 10,
                  ),
                  Button(
                      background: Colors.white,
                      foreground: Colors.red,
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BuySell(),
                          ),
                        );
                      },
                      text: "Bid")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
