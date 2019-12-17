import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),

      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatelessWidget{
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFF18D191)
                  ),
                  child: new Icon(
                    Icons.local_offer,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFFC6A7F),
                  ),
                  child: new Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFFFCE56)
                  ),
                  child: new Icon(
                    Icons.local_car_wash,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 90.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFF45E0EC)
                  ),
                  child: new Icon(
                    Icons.local_dining,
                    color: Colors.white,
                  ),

                )
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text("Home Page UI",
                    style: new TextStyle(fontSize: 30.0,
                  color: Colors.indigo,
                  fontFamily: "Times New Roman"),
                  ),
                )
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                        onTap: (){
                          _showToast("Email Button");
                        },
                    
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: new BorderRadius.circular(9.0)
                        ),
                        child: new Text("Sign In with Email",
                        style: new TextStyle(
                          fontSize: 20.0, color: Colors.white
                        ),),

                      ),
                    ),
                   ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                    left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        _showToast("Facebook Button");
                      },
                    child: new Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      color: Color(0xFF4364A1),
                      borderRadius: new BorderRadius.circular(9.0)
                    ),
                    child: new Text("Facebook",
                    style: new TextStyle(
                      fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0, right: 20.0, top: 10.0),
                        child: GestureDetector(
                          onTap: (){
                            _showToast("Google Button");
                          },
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFFDF513B),
                        borderRadius: new BorderRadius.circular(9.0)
                      ),
                      child: new Text("Google",
                      style: new TextStyle(
                        fontSize: 20.0, color: Colors.white))),
                        ),
                    )
                )
              ],
            )


          ],
        ),
      ),
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


}



