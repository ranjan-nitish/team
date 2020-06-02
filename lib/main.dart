import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Orderpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: WalletApp(),
    );
  }
}

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  var screens =[
    Orderpage(),


  ];//screen for each tab


  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(

          title:Text('NU Wallet'),backgroundColor:Colors.deepPurpleAccent,
        ),
        body:Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children:<Widget>[
        Row(
          children: <Widget>[
            Container(

              padding:EdgeInsets.all(10),
              margin:EdgeInsets.all(30.0),
              color:Colors.deepPurpleAccent,
              child:FlatButton(
                onPressed: (){},
                child:Text('Pay')
              )
            ),
            Container(

                padding:EdgeInsets.all(10),
                margin:EdgeInsets.all(30.0),
                color:Colors.deepPurpleAccent,
                child:FlatButton(
                    onPressed: (){},
                    child:Text('Add Money')
                )
            )
          ],
        ),
        Row(
          children:<Widget>[
            Container(
                padding:EdgeInsets.all(10),
                margin:EdgeInsets.all(30.0),
                color:Colors.deepPurpleAccent,
                child:FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Orderpage()),
                      );
                    },
                    child:Text('Order')
                )

            ),


          ]

        ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,

                children:<Widget>[
                  Container(
                    width:350 ,
                    height:200,
                    color:Colors.white,
                    child:Image.asset('assets/University-Aglasem-Image-720x375.jpg')

                  )

                ]
              ),

            ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.home,color:Colors.deepPurpleAccent),
              title:Text("Home")
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.message),

                title:Text("Inbox")
            ),
          ]
        ),
    );
  }
}

