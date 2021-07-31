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
          DataCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiv5UzdRyh_ZRi3OGmaeEoCeP-ZZMiE6hnwQ&usqp=CAU','Splash : This is a Splash Screen', 'This is the descripion of title 1 Animals, fish and insects also get their food and shelter from nature. Different trees grow up due to sunlight and water provided by nature. Humans should stop causing harm to the elements of nature for their needs. Nature is very important to maintain the growth and balance of life on earth.'),
          DataCard('https://cdn.mos.cms.futurecdn.net/xj5VRUJxs3pRZtdU4XS8XZ-1024-80.jpg.webp', 'Title 2: Lost Paradise', 'This is the descripion OF title 2'),
          DataCard('https://purewows3.imgix.net/images/articles/2019_04/most-beautiful-places-in-the-world-nuuk-greenland.jpeg?auto=format,compress&cs=strip', 'Title 3 : Name this beautiful place', 'This is the descripion of title 3 Nature is made of everything we see around us – trees, flowers, plants, animals, sky, mountains, forests and more. Human beings depend on nature to stay alive. Nature helps us breathe, gives us food, water, shelter, medicines, and clothes. We find many colors in nature which make the Earth beautiful'),
          DataCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4XWMdDw-xzDqDtF20SisBNetQAxR1lEvNGrWaG8ID1UYAGXFPo6NF4myKr3sOMRydXw&usqp=CAU', 'Sunset in paradise isnt it ', 'This is the descripion OF title 4'),
          DataCard('https://cdn.djaunter.com/wp-content/uploads/2019/11/Moraine-Lake-Canada.jpg', 'Title 5: New Title', 'This is the descripion OF title 5'),
          DataCard('https://cdn.pixabay.com/photo/2018/09/19/23/03/sunset-3689760__340.jpg', 'Beaches: are always beautiful', 'This is the descripion OF title 6'),
        ],
      ),
    );
  }


  Widget DataCard(final String link, final String title, final String description) => Padding(
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
                    builder: (context) => view(title : title, link : link, description: description),
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
