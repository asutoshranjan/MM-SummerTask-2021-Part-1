
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8EEEC),
      appBar: AppBar(
        backgroundColor: Color(0xFFF28482),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Login Page',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: buildID(),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: buildPassword(),
            ),

            ButtonBar(
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed:() {},
                ),


                Padding(
                  padding: EdgeInsets.only(left: 160),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Color(0xFFEA8C86),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() {},
                  ),
                ),

              ],

            ),

          ],
        ),
      ),
    );
  }

  // ID text field widget

  Widget buildID() => TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.account_circle),
      labelText: 'User ID',
    ),

    //done button on keyboard
    textInputAction: TextInputAction.done,
  );



  // password text field widget
  Widget buildPassword() => TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.vpn_key),
      labelText: 'Password',
    ),

    //done button on keyboard
    textInputAction: TextInputAction.done,
  );
}
