import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {


//  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Driver Details"),
        centerTitle: true,),
      body: Container(

        color: Colors.blueAccent,
        child:
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'DRIVER DETAILS',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: SizedBox(

                    height: 150.0,
                    child: Image.asset(
                      "images/driver.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
//                  color: Colors.white ,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),        ),
                      child: Container(
                        color: Colors.white,
                        child: Text('Id : E73a259',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
//                  color: Colors.white ,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),        ),
                      child: Container(
                        color: Colors.white,
                        child: Text('Name : Deep',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
//                  color: Colors.white ,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),        ),
                      child: Container(
                          color: Colors.white,
                          child: Text('Contact: 9958554751',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                      )),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
//                  color: Colors.white ,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),        ),
                      child: Container(
                          color: Colors.white,
                          child:  Text('Bike no : TN 75 E 3422',
                            style: TextStyle(
                              fontSize: 20,
                            ),)
                      )),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
