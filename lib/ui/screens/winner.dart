import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Winner extends StatelessWidget {
  const Winner({Key key}) : super(key: key);

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
                  'Your Result',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
            width: size.width * 0.9,
            height: MediaQuery.of(context).orientation ==Orientation.portrait? size.height * 0.7:size.height,
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(50.0),
                  topRight: const Radius.circular(50.0),
                  bottomLeft: const Radius.circular(50.0),
                  bottomRight: const Radius.circular(50.0),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    width: size.width * 0.6,
                    height: 50,
                    child: Text(
                      'Congratulation! You are a Big Winner...',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.7,
                  height: size.height * 0.45,
                  decoration: new BoxDecoration(
                      color: HexColor('#1919a3'),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                        bottomLeft: const Radius.circular(50.0),
                        bottomRight: const Radius.circular(50.0),
                      )),
                  child: Center(
                    child: Container(
                        width: size.width * 0.5,
                        child:
                            SvgPicture.asset('assets/undraw_winners_ao2o.svg')),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  r'You Got $1200',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),


              ],
            ),
          ),
              SizedBox(height: 30,)
        ]),
      )
    ]));
  }
}
