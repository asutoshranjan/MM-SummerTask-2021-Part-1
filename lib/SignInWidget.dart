

import 'package:flutter/material.dart';
import 'package:mm_flutter_app/LoginPage.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // User Data





    return Drawer(
      child: Container(
        color: Color(0XFFF5CAC3),

        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  Material(   // login call button
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    child: ListTile(
                      leading: Icon(Icons.account_circle, color: Colors.white, size: 30,),
                      title: Text('Login', style: TextStyle(color: Colors.white, fontSize: 23),),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginPage()
                        ),
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Material(  // admin call button
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      child: ListTile(
                        leading: Icon(Icons.account_box_rounded, color: Colors.white, size: 30,),
                        title: Text('Admin', style: TextStyle(color: Colors.white, fontSize: 23),),
                        onTap: () {},
                      ),
                    ),
                  ),

                  SizedBox(height: 24),
                  Divider(color: Colors.white70, thickness:3),
                  SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Material(   // Logout call button
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      child: ListTile(
                        leading: Icon(Icons.account_circle_outlined, color: Colors.white, size: 30,),
                        title: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 23),),
                        onTap: () {},
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),

      ),
    );
  }

  

}
