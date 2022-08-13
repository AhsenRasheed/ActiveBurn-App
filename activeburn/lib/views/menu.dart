// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// import 'package:chat_app/authentication/Registration.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
// ignore: use_key_in_widget_constructors
  @override
  Widget build(BuildContext context) => Scaffold(
        
        body: Column(
          children: [
            
            Stack(
              children: <Widget>[
               Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset(
                    "assets/upper circle.png",
                  ),
                        ),
                ),
              ),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                        // ignore: sort_child_properties_last
                        child: Icon(Icons.person, color: Colors.black,),
                        alignment: Alignment.center, 
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.02,),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text('Hello User', style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.04 ),),
                  )
                ],
              )
          ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
              
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Row(
                children: [
                  Text(
                    '1 day streak,',
                  ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.01,
              ),
              Text('0 kg gained'),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              color: Colors.white,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5475,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Try Premium For Free',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Recipe Discovery',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Progress',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Nutrition',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Goals',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                        title: Text('Recipes, Meals & Food',style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,))),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      );
}
