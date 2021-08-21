import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:lottery_ticket/ui/screens/loser.dart';
import 'package:lottery_ticket/ui/screens/winner.dart';

class SeeResult extends StatefulWidget {
  List<int> selectedNumbers = [];
  SeeResult({this.selectedNumbers});

  @override
  _SeeResultState createState() => _SeeResultState();
}

class _SeeResultState extends State<SeeResult> {
  String game = 'Jackpots';
  String date = DateFormat.yMMMMd().format(DateTime.now());
  int selected = 00;

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
                        'See Result',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                Container(
                  width: size.width * 0.9,
                  height:MediaQuery.of(context).orientation ==Orientation.portrait? size.height * 0.5:size.height ,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                        bottomLeft: const Radius.circular(50.0),
                        bottomRight: const Radius.circular(50.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: DropdownButton<String>(
                            value: game,
                            icon: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            iconSize: 25,
                            elevation: 16,
                            style: const TextStyle(color: Colors.green),
                            underline: Container(
                              height: 0,
                            ),
                            onChanged: (newValue) {
                              setState(() {
                                game = newValue;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: "Jackpots",
                                  child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/medal.png',
                                              height: 30,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              'Jackpots',
                                              style: TextStyle(color: Colors.green),
                                            )
                                          ],
                                        ),
                                      ))),
                              DropdownMenuItem(
                                  value: "Cards",
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.videogame_asset,
                                            color: Colors.green),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Cards',
                                            style: TextStyle(color: Colors.green))
                                      ],
                                    ),
                                  )),
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            DatePicker.showDatePicker(
                              context,
                              showTitleActions: true,
                              minTime: DateTime(2018, 01, 01),
                              maxTime: DateTime(2021, 12, 31),
                              onChanged: (date) {
                                print('change $date');
                              },
                              onConfirm: (date1) {
                                setState(() {
                                  date = DateFormat.yMMMMd().format(date1);
                                });
                              },
                            );
                          },
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    date,
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: size.width * 0.8,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter Your Number',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          circle(widget.selectedNumbers[0]),
                          circle(widget.selectedNumbers[1]),
                          circle(widget.selectedNumbers[2]),
                          circle(widget.selectedNumbers[3]),
                          circle(widget.selectedNumbers[4]),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (game == 'Jackpots')
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Winner()));
                          else
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Loser()));
                        },
                        child: Container(
                          width: size.width * 0.6,
                          height: 40,
                          decoration: BoxDecoration(
                            color: HexColor('#1919a3'),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "See Result",
                              style: TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,)
              ]),
        )
      )
    ]));
  }

  Widget circle(int number) {
    return GestureDetector(
        onTap: () {
          int count = 0;
          Navigator.of(context).popUntil((_) => count++ >= 2);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ));
  }
}
