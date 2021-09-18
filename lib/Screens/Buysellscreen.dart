import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

class BuySell extends StatelessWidget {
  // const BuySell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                    "Highest Bid: ",
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "\$100",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 15,
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lowest Ask: ",
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "\$100",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomSlidingSegmentedControl<int>(
                isStretch: true,
                //fixedWidth: MediaQuery.of(context).size.width / 2.5,
                thumbColor: Colors.green[900],
                innerPadding: 0,
                //textColor: Colors.white,
                children: {
                  0: Text(
                    'Place Bid',
                    //textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  1: Text(
                    'Buy Now',
                    textAlign: TextAlign.center,
                  ),
                },
                duration: Duration(milliseconds: 200),
                radius: 30.0,
                onValueChanged: (index) {
                  print(index);
                },
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
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(
                          0xFF494949,
                        ),
                        border: Border.all(color: Color(0xffA5ACAF))),
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
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(
                            0xFF494949,
                          ),
                          border: Border.all(color: Color(0xffA5ACAF))),
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
                    "Processing Fee",
                    style: TextStyle(
                      color: Colors.grey[400],
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
              Divider(
                color: Colors.grey[500],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
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
              RaisedButton(
                onPressed: () {},
                child: Text("Next"),
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
