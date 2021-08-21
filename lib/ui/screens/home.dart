import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottery_ticket/models/game.dart';

import 'package:lottery_ticket/ui/widgets/game_item.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool prize = true;
  bool home = false;
  bool profile = false;


  List<Game> games = [
    new Game(
      name: 'Supper Ball',
      country: 'assets/800px-Flag_of_France.png',
      image: 'assets/pngaaa.com-732489.png',
      prize: '643 000 000'

    ),
    new Game(
        name: 'Supper Ball',
        country: 'assets/800px-Flag_of_China.png',
        image: 'assets/38-385372_product-logo-lucky-number-game.png',
        prize: '643 000 000'

    ),
    new Game(
        name: 'Supper Ball',
        country: 'assets/800px-Flag_of_the_United_Kingdom.svg.png',
        image: 'assets/daily-grand.png',
        prize: '643 000 000'

    ),
    new Game(
        name: 'Supper Ball',
        country: 'assets/Flag_of_Germany.svg.png',
        image: 'assets/keno_straightLogo.png',
        prize: '643 000 000'

    ),
    new Game(
        name: 'Supper Ball',
        country: 'assets/flags_PNG14592.png',
        image: 'assets/lotto-logo.png',
        prize: '643 000 000'

    ),
    new Game(
        name: 'Supper Ball',
        country: 'assets/800px-Flag_of_France.png',
        image: 'assets/—Pngtree—bingo big lottery game console_5103056.png',
        prize: '643 000 000'

    )
  ];


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
            color: HexColor('#1919a3').withOpacity(0.9 ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.055,
              ),
              Center(
                  child: Text(
                'Lottery Ticket',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),

              SizedBox(
                height: size.height * 0.055,
              ),
              Expanded(
                child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(50.0),
                          topRight: const Radius.circular(50.0),
                        )
                    ),
                  child: ListView.builder(
                    itemCount: games.length,
                      itemBuilder: (context,i){
                      return Column(
                        children: [
                          GameItem(game: games[i],),
                          i==5? Container(
                            height: 50,
                          ):
                              Container()
                        ],
                      );

                      }),

                ),
              ),

            ],
          ),


          Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.transparent),
                     child:Stack(
                       children: [
                         Container(
                           height: 70,
                           child: Image.asset('assets/93-932630_half-circle-png.png',
                             color: HexColor('#1919a3'),
                             width: double.infinity,
                             fit: BoxFit.fill,
                           ),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:25,top: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: prize? Colors.white:Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: IconButton(onPressed: (){
                                    setState(() {
                                      prize = true;
                                      home = false;
                                      profile = false;
                                    });
                                  },
                                      icon:  Image.asset('assets/medal.png',
                                        color: prize? HexColor('#1919a3'):Colors.white,
                                        height: 25,)),
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                    color: home? Colors.white:Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                                child: IconButton(onPressed: (){
                                  setState(() {
                                    prize = false;
                                    home = true;
                                    profile = false;
                                  });
                                },
                                    icon:  Image.asset('assets/homepage.png',
                                      color: home? HexColor('#1919a3'):Colors.white,
                                      height: 25,)),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:25,top: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: profile? Colors.white:Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: IconButton(onPressed: (){
                                    setState(() {
                                      prize = false;
                                      home = false;
                                      profile = true;
                                    });
                                  },
                                      icon:  Image.asset('assets/user.png',
                                        color: profile? HexColor('#1919a3'):Colors.white,
                                        height: 25,)),
                                ),
                              )
                            ],
                          ),
                        )
                       ],
                     )
                )),
        ],
      ),

    );
  }
}
