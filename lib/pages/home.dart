import 'package:flutter/material.dart';
import 'package:solution/pages/score_board.dart';
import 'package:solution/ui/googlemaps.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int seciliSayfa = 0;
        void sayfaDegistir(int index){
        setState(() {
            seciliSayfa = index;
          });
        }

        final tabs =[
          Center(child:HomePage()),
          Center(child:ScoreBoard())

        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         
          Container(
            height:120,
            padding: EdgeInsets.only(top:50, right:20,left:20,bottom:120),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Search",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey[200]),
                       
                      ),
                    ),
                  ),
                ),
                SizedBox(width:20),
                Icon(Icons.share, color:Colors.grey[800], size:30),
              ]
            )
          ),
          //SizedBox(height:20),
          Container(
            child: Expanded(
              
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  makeFeed(
              userName: 'Pizza Ra', 
              userImage: 'assets/images/ra.jpg',
              feedTime: "1 hr ago",
              feedText: "Arkadaşlar merhaba, bugün işletmemizde 10 pizza kalmıştır, 6 gün içerisinde bozulacaktır.",
              feedImage: "assets/images/pizza.jpg"
              ),
               makeFeed(
              userName: 'Lokanta Pera', 
              userImage: 'assets/images/restoran.png',
              feedTime: "1 hr ago",
              feedText: "Arkadaşlar merhaba, bugün işletmemizde 4 adet tost kalmıştır, 2 gün içerisinde bozulacaktır.",
              feedImage: "assets/images/tost.jpg"
              ),
               makeFeed(
              userName: 'HG Otel', 
              userImage: 'assets/images/otel.jpg',
              feedTime: "1 hr ago",
              feedText: "Arkadaşlar merhaba, bugün işletmemizde 3 pizza kalmıştır, 6 gün içerisinde bozulacaktır.",
              feedImage: "assets/images/pizza.jpg"
              ),
               makeFeed(
              userName: 'TT Market', 
              userImage: 'assets/images/market.jpg',
              feedTime: "1 hr ago",
              feedText: "Arkadaşlar merhaba, bugün işletmemizde 2 kg pirinç kalmıştır, 15 gün içerisinde bozulacaktır.",
              feedImage: "assets/images/princ.png"
              ),
                ],
              )
            ),
          ),
        
        //  SizedBox(height:40),
          
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
        currentIndex: seciliSayfa,
        onTap: sayfaDegistir,
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.account_circle),
            title: Text("Home", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w800)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.score),
            title: Text("Score Board", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w800)),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w800)),
          ),
          ]
      ),
      
       
    );
  }
}


Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width:50, 
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(userImage),
                    fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Text(userName,style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold,)),
                    SizedBox(height:3),
                    Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey)),

                 ],
                )
              ],
            ),

          ],
        ),
        SizedBox(height: 20,),
        Text(feedText, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:Colors.grey[800], height:1.5, letterSpacing:3)),
        SizedBox(height: 20,),
        Container(
          height:200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(feedImage),
              fit: BoxFit.cover,
            )
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                  makeReceive(isActive: true)
              ],
            ),
          ],
        ),
      ],
    )
  );
}
Widget makeReceive({isActive}){

  return Container(
    padding: EdgeInsets.symmetric(horizontal:20,vertical:5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(icon: Icon(Icons.shop, color: isActive ? Colors.orange : Colors.grey ), onPressed: (){}),
          
          SizedBox(width:10),
          Text("Receive", style: TextStyle(color: isActive ? Colors.orange : Colors.grey))
        ],
      ),
    ),
  );

}

Widget tabBar()=>Scaffold(
  
      appBar: AppBar(
        title: Text("Foodzy"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.business),
            ),
            Tab(
              icon: Icon(Icons.local_mall),
            ),
            Tab(
              icon: Icon(Icons.add_shopping_cart),
            ),
          ]
          ),
      ),
);

 


Widget sayfaGoster(int seciliSayfa){
  if(seciliSayfa == 0){
    return HomePage();
  }
  else if(seciliSayfa == 1){
    
    return ScoreBoard();
  }
  else if(seciliSayfa == 2){
    
  }
}