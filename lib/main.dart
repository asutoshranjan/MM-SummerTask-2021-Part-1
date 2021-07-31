import 'package:flutter/material.dart';
import 'package:mm_flutter_app/LatestPage.dart';
import 'package:mm_flutter_app/SignInWidget.dart';
import 'package:mm_flutter_app/TrendingPage.dart';
import 'file:///C:/Users/asuto/AndroidStudioProjects/mm_flutter_app/lib/provider/DataView.dart';
import 'file:///C:/Users/asuto/AndroidStudioProjects/mm_flutter_app/lib/provider/articles.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter News',
    home: Homepage(),
  ));

}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(
        drawer: SignIn(),
        appBar: AppBar(

          backgroundColor: Color(0xFFF28482),
          title: Text(
            'NEWS',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white,),
              tooltip: 'Search',
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => Article(),
                ),
                );
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Icon(
                          Icons.auto_awesome,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '   Latest',
                      ),
                    ),
                  ],
                ),
              ),
              Tab( // Trending Tab
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: Icon(
                          Icons.whatshot,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '  Trending',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LatestPage(),
            TrendingPage(),
          ],
        ),
      ),
    );
  }
}

