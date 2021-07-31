import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class view extends StatefulWidget {
  String title;
  String link;
  String description;
  view({this.title, this.link, this.description});

  @override
  _viewState createState() => _viewState(title, link, description);
}

class _viewState extends State<view> {
  String title;
  String link;
  String description;
  _viewState(this.title, this.link, this.description);

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
          title,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Ink.image(
              image: NetworkImage(
                link,
              ),
              height: 240,
              fit: BoxFit.cover,
            )
          ),

          //title
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Color(0xFFFCEFEE),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFF663A14),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),

          //description
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Color(0xFFFCEFEE),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                description,
                style: TextStyle(
                  color: Color(0xFF663A14),
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          ButtonBar(
            children: [
              // ignore: deprecated_member_use
              RaisedButton(
                color: Color(0xFFEA8C86),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                    'Like',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                  onPressed:() {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
