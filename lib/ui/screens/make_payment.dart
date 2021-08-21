import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottery_ticket/ui/screens/see_result.dart';

class MakePayment extends StatefulWidget {
  List<int> selectedNumbers = [];
  MakePayment({this.selectedNumbers});

  @override
  _MakePaymentState createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          'assets/1.jpg',
          fit: BoxFit.fill,
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: HexColor('#1919a3').withOpacity(0.9),
      ),
      SingleChildScrollView(

        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18,
                      )),
                  Text(
                    'Payment',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '02:00 PM',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: size.width * 0.9,
              height: MediaQuery.of(context).orientation ==Orientation.portrait?size.height * 0.45:size.height * 0.8 ,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                    bottomLeft: const Radius.circular(50.0),
                    bottomRight: const Radius.circular(50.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selected Numbers',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.selectedNumbers
                        .toString()
                        .substring(1)
                        .replaceAll(']', ''),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Number of Draws',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: HexColor('#1919a3'),
                              borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: HexColor('#1919a3'),
                            borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: HexColor('#1919a3'),
                              borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Possible Winners',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    r'$100 - $1200',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              r'Total : $10',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeeResult(
                              selectedNumbers: widget.selectedNumbers,
                            ))),
                child: Container(
                  width: size.width * 0.5,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Payment Now",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      )
    ]));
  }
}
