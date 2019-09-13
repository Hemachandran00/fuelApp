import 'package:flutter/material.dart';
import 'package:gazz/main.dart';
import '../../../smartfarmland/lib/utils/sign_in.dart';


class Account_info extends StatelessWidget {
//  var nullURL="https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn0.iconfinder.com%2Fdata%2Ficons%2Fflat-design-business-set-3%2F24%2Fpeople-customer-unknown-512.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F2310358%2Fcustomer_people_unknown_user_icon&docid=gyVOJf9M49rQlM&tbnid=wh9vUaZus8-57M%3A&vet=10ahUKEwjr19TlubrkAhWLpo8KHYYzASAQMwhqKAAwAA..i&w=512&h=512&bih=608&biw=1366&q=unknown%20user&ved=0ahUKEwjr19TlubrkAhWLpo8KHYYzASAQMwhqKAAwAA&iact=mrc&uact=8";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue[100], Colors.blue[400]],
          ),
        ),
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.max,
//            children: <Widget>[
//              CircleAvatar(
//                backgroundImage: NetworkImage(
//                  imageUrl==null?nullURL:imageUrl,
//                ),
//                radius: 60,
//                backgroundColor: Colors.transparent,
//              ),
//              SizedBox(height: 40),
//              Text(
//                'NAME',
//                style: TextStyle(
//                    fontSize: 15,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              Text(
//                name,
//                style: TextStyle(
//                    fontSize: 25,
//                    color: Colors.deepPurple,
//                    fontWeight: FontWeight.bold),
//              ),
//              SizedBox(height: 20),
//              Text(
//                'EMAIL',
//                style: TextStyle(
//                    fontSize: 15,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              Text(
//                email,
//                style: TextStyle(
//                    fontSize: 25,
//                    color: Colors.deepPurple,
//                    fontWeight: FontWeight.bold),
//              ),
//              SizedBox(height: 40),
//              RaisedButton(
//                onPressed: () {
//                  signOutGoogle();
//                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return Page1();}), ModalRoute.withName('/'));
//                },
//                color: Colors.deepPurple,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text(
//                    'Sign Out',
//                    style: TextStyle(fontSize: 25, color: Colors.white),
//                  ),
//                ),
//                elevation: 5,
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(40)),
//              )
//            ],
//          ),
//        ),
      ),
    );
  }
}