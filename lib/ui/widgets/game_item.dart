import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottery_ticket/models/game.dart';
import 'package:lottery_ticket/ui/screens/choose_number.dart';

class GameItem extends StatefulWidget {
  Game game;
  GameItem({this.game});

  @override
  _GameItemState createState() => _GameItemState();
}

class _GameItemState extends State<GameItem> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000000 * 50;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.asset(
                    widget.game.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.game.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Jackpot',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      r'$ ' + widget.game.prize,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: size.width * 0.25,
                child: Column(
                  children: [
                    Image.asset(
                      widget.game.country,
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      'Next Draw',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    CountdownTimer(
                      endTime: endTime,
                      endWidget: Text('Expired'),
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseNumber()));
                  },
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: HexColor('#1919a3'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Play now",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: 1,
            width: size.width * 0.9,
            color: Colors.black12,
          ),
        )
      ],
    );
  }
}
