import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottery_ticket/models/numbers.dart';
import 'package:lottery_ticket/ui/screens/make_payment.dart';

class ChooseNumber extends StatefulWidget {
  const ChooseNumber({Key key}) : super(key: key);

  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  List<int> selectedNumbers = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
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
                height: size.height*1.5,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Choose Number',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Choose',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        '5 Numbers',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 50,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                              child: selectedNumbers.length != 0
                                  ? Center(
                                  child: Text(
                                    selectedNumbers[0].toString(),
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ))
                                  : Text(' '),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 50,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                              child: selectedNumbers.length >= 2
                                  ? Center(
                                  child: Text(
                                    selectedNumbers[1].toString(),
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ))
                                  : Text(' '),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 50,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                              child: selectedNumbers.length >= 3
                                  ? Center(
                                  child: Text(
                                    selectedNumbers[2].toString(),
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ))
                                  : Text(' '),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 50,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                                child: selectedNumbers.length >= 4
                                    ? Center(
                                    child: Text(
                                      selectedNumbers[3].toString(),
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ))
                                    : Text(' '),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 50,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                              child: selectedNumbers.length >= 5
                                  ? Center(
                                  child: Text(
                                    selectedNumbers[4].toString(),
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ))
                                  : Text(' '),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(50.0),
                              topRight: const Radius.circular(50.0),
                            )),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Text(
                                      '02:00 pm',
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    )),
                                Text(
                                  'Single',
                                  style:
                                  TextStyle(fontSize: 12, color: Colors.black54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: size.height*0.48,
                              child: GridView.count(
                                  crossAxisCount: 6,
                                  children: List.generate(30, (index) {
                                    return myItem(
                                      new Numbers(number: index + 1, selected: false),
                                    );
                                  })),
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap: () {

                                if (selectedNumbers.length == 5)
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MakePayment(
                                            selectedNumbers: selectedNumbers,
                                          )));
                              },
                              child: Container(
                                width: size.width * 0.5,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: HexColor('#1919a3'),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Make a Payment",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )

        ],
      ),
    );
  }

  Widget myItem(Numbers number) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            color: selectedNumbers.contains(number.number)
                ? HexColor('#1919a3')
                : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: GestureDetector(
          onTap: () {
            setState(() {
              number.selected = !number.selected;
            });

            if (!selectedNumbers.contains(number.number) &&
                selectedNumbers.length <= 4)
              selectedNumbers.add(number.number);
            else
              selectedNumbers.removeWhere((element) => number.number == element);

            print(selectedNumbers);
            print(number.selected);
          },
          child: Center(
              child: Text(
            number.number.toString(),
            style: TextStyle(
                color: selectedNumbers.contains(number.number)
                    ? Colors.white
                    : Colors.black54),
          )),
        ),
      ),
    );
  }
}
