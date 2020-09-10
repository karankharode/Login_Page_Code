import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/radhabg2.jpeg"),
          fit: BoxFit.fill)
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[Positioned(
                  
                  child: FadeAnimation(1.5,
                  Container(
                    margin: EdgeInsets.only(top: 300,bottom: 30),
                    child: Center(
                      child: Text("Login",
                      style: TextStyle(fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)
                        
                      ),),
                    )),
                  )
                  
                  ],
              ),
            ),

            Padding(padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .3),
                        blurRadius: 20.0,
                        offset: Offset(0,10)
                      )
                    ]
                  ),
                  child: Column(children: [
                    FadeAnimation(1.4 ,Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[100], 
                          )
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone Number",
                          hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    )
                  ),

                    FadeAnimation(1.6, Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            color: Colors.grey[100], 
                          )
                          )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    ),
                  )
                  ],
                  ),
                ),

                SizedBox(height: 30,),

                FadeAnimation(1.6, Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(14, 150, 251, 0.6),
                      Color.fromRGBO(25, 220, 251, 0.7)
                    ])
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold )
                        )
                      ),
                    ),
                  ),
                ),
            ),
                SizedBox(height: 10,),

                FadeAnimation(1.7,Text("Forgot Password?",
                style: TextStyle(color: Colors.white,
                fontSize: 15),)
            ),

              ],
            ),
            )
          ],
        ),
        
      ),


    );
  }
}
