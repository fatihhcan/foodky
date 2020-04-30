import 'package:flutter/material.dart';
import 'package:solution/pages/profile.dart';
import 'package:solution/pages/score_board.dart';
import 'package:solution/ui/googlemaps.dart';
import 'package:solution/ui/tabbar.dart';

import 'hotels.dart';

class Hotels1 extends StatefulWidget {
  Hotels1({Key key}) : super(key: key);

  @override
  _Hotels1State createState() => _Hotels1State();
}

class _Hotels1State extends State<Hotels1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildColumnHome(),
      ),
    );
  }

  Widget buildColumnHome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //SizedBox(),

        Container(
          child: Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              //   FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
              makeFeed(
                  userName: 'Biga Otel',
                  userImage: 'assets/images/otel.jpg',
                  feedTime: "1 hr ago",
                  feedText:
                      "Ankara - Arkadaşlar merhaba, bugün işletmemizde 10 pizza kalmıştır, 6 gün içerisinde bozulacaktır.",
                  feedImage: "assets/images/pizza.jpg"),
              makeFeed(
                  userName: 'Otel TQ',
                  userImage: 'assets/images/otel.jpg',
                  feedTime: "1 hr ago",
                  feedText:
                      "Ankara - Arkadaşlar merhaba, bugün işletmemizde 4 adet tost kalmıştır, 2 gün içerisinde bozulacaktır.",
                  feedImage: "assets/images/tost.jpg"),
              makeFeed(
                  userName: 'Otel BBG',
                  userImage: 'assets/images/otel.jpg',
                  feedTime: "1 hr ago",
                  feedText:
                      "Ankara - Arkadaşlar merhaba, bugün işletmemizde 3 pizza kalmıştır, 6 gün içerisinde bozulacaktır.",
                  feedImage: "assets/images/pizza.jpg"),
              makeFeed(
                  userName: 'Otel LPZ',
                  userImage: 'assets/images/otel.jpg',
                  feedTime: "1 hr ago",
                  feedText:
                      "Ankara - Arkadaşlar merhaba, bugün işletmemizde 2 kg pirinç kalmıştır, 15 gün içerisinde bozulacaktır.",
                  feedImage: "assets/images/princ.png"),
            ],
          )),
        ),

        //  SizedBox(height:40),
      ],
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: DropdownButton<String>(
                    items: [
                      DropdownMenuItem<String>(
                        value: "1",
                        child: Center(child: Text("Ankara")),
                      ),
                      DropdownMenuItem<String>(
                        value: "2",
                        child: Center(child: Text("İstanbul")),
                      ),
                      DropdownMenuItem<String>(
                        value: "3",
                        child: Center(child: Text("İzmir")),
                      ),
                    ],
                    onChanged: (_value) => {
                      print(_value.toString()),
                    },
                    hint: Text(
                      "Select City",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  "Selected City Ankara",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.indigo.shade400),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(userName,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 3),
                        Text(feedTime,
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(feedText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    height: 1.5,
                    letterSpacing: 3)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[makeReceive(isActive: true)],
                ),
              ],
            ),
          ],
        ));
  }

  Widget makeReceive({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.shop,
                    color: isActive ? Colors.orange : Colors.grey),
                onPressed: () {}),
            SizedBox(width: 10),
            Text("Receive",
                style: TextStyle(
                    color: isActive ? Colors.orange.shade800 : Colors.grey,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 120),
            IconButton(
                icon: Icon(Icons.star,
                    color: isActive ? Colors.orange : Colors.grey),
                onPressed: () {}),
            SizedBox(width: 10),
            Text("Point",
                style: TextStyle(
                    color: isActive ? Colors.orange.shade800 : Colors.grey,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
