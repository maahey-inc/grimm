import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import '/Wigdets/Button.dart';

class BuySell extends StatelessWidget {
  // const BuySell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Music Name",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              "Writer/Compose/Producer",
              style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$100",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    child: Center(
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                    ),
                    height: 41,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Color(0xffA5ACAF),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          10,
                        ),
                        bottomLeft: Radius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Enter Bid",
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                //fontSize: 22,
                                //color: Colors.grey,
                                ),
                          ),
                        ),
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffA5ACAF),
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            10,
                          ),
                          bottomRight: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pay With:",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              Divider(
                color: Colors.grey[500],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Processing Fee*",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "+\$18.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tax*",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$6.00",
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
                    "Order Total",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$150.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bid Expiration: 30 Days",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email Address: abc@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Button(
                background: Colors.red,
                foreground: Colors.white,
                ontap: () {},
                text: "Review Bid",
              )
            ],
          ),
        ),
      ),
    );
  }
}
