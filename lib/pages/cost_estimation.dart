import 'package:flutter/material.dart';
import 'package:gazz/pages/d_details.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int quality=0;
  String value = "";

  void qualityfunc(int qualityval){
    setState(() {
      quality = qualityval;


    });
  }
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: new Text('GAZ'),
              backgroundColor: Colors.blue,
            ),
            body: new Container(
                padding: EdgeInsets.all(8.0),
                child:
                new Column(
                    children: <Widget>[
                      new Text(
                        'Fuel choice :',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            'Petrol',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Radio(
                            value: 1,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            'Disel',
                            style: new TextStyle(
                              fontSize: 16.0,
                            ),
                          ),

                        ],
                      ),
                      new Text(
                        'Quantity :',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      TextField(
                        decoration: new InputDecoration(labelText: "Enter your number"),
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          value = text;
                          if (value=='')
                            qualityfunc(0);
                          else
                            qualityfunc(int.parse(value));
                        },
                      ),
                      quality==0? new Text(
                        'Quantity of the fuel in litres',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ):Text(
                        '${_radioValue1==1?(quality*72)-10:quality*72}',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      FlatButton(onPressed: (){
                        Navigator.of(context).push(_createRoute());

                      }, child: Text("Place Order"),)
                    ]
                )
            )
        )
    );
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    correctScore = 0;
  }

}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation) => MyHomePage(),
    transitionsBuilder: (context,animation,secondaryAnimation,child) {
      var begin=Offset(1.0,0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin : begin , end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );

    },
  );
}

