

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // User Data
    final String name = 'John Singh';
    final String image = 'https://i.pinimg.com/originals/8b/46/cf/8b46cf84783518585170e6442a757570.jpg';




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
                  Material(   // login
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    child: ListTile(
                      leading: Icon(Icons.account_circle, color: Colors.white, size: 30,),
                      title: Text('Login', style: TextStyle(color: Colors.white, fontSize: 23),),
                      onTap: () {},
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Material(  // admin
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
                    child: Material(   // Logout
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
