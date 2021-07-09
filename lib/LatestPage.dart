import 'package:flutter/material.dart';
import 'package:mm_flutter_app/View.dart';

class LatestPage extends StatefulWidget {
  @override
  _LatestPageState createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFDCE5E3),
      child: ListView(
        children: [
          DataCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiv5UzdRyh_ZRi3OGmaeEoCeP-ZZMiE6hnwQ&usqp=CAU','Splash : This is a Splash Screen'),
          DataCard('https://cdn.mos.cms.futurecdn.net/xj5VRUJxs3pRZtdU4XS8XZ-1024-80.jpg.webp', 'Title 2: Lost Paradise'),
          DataCard('https://purewows3.imgix.net/images/articles/2019_04/most-beautiful-places-in-the-world-nuuk-greenland.jpeg?auto=format,compress&cs=strip', 'Title 3 : Name this beautiful place'),
          DataCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4XWMdDw-xzDqDtF20SisBNetQAxR1lEvNGrWaG8ID1UYAGXFPo6NF4myKr3sOMRydXw&usqp=CAU', 'Sunset in paradise isnt it '),
          DataCard('https://cdn.djaunter.com/wp-content/uploads/2019/11/Moraine-Lake-Canada.jpg', 'Title 5: New Title'),
          DataCard('https://cdn.pixabay.com/photo/2018/09/19/23/03/sunset-3689760__340.jpg', 'Beaches: are always beautiful'),
        ],
      ),
    );
  }


  Widget DataCard(final String link, final String title) => Padding(
    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
    child: Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Ink.image(
              image: NetworkImage(
                link,
              ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => view(title : title, link : link),
                ),
                );

              },
            ),
            height: 210,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 15,
            right: 15,
            left: 15,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),

    ),
  );
}
