import 'package:flutter/material.dart';
import 'package:mm_flutter_app/provider/article_provider.dart';
import 'package:provider/provider.dart';

class DataView extends StatefulWidget {
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {

  @override
  void initState() {
    Provider.of<ArticleProvider>(context, listen: false).fetchData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Data"),
        centerTitle: true,
      ),
      body: Container(
        child: Consumer<ArticleProvider>(
          builder: (context,model,_) => FutureBuilder(
              future: model.fetchData(),
              builder: (context,snapshot) => ListView.builder(
                  itemCount: model.articleData.length,
                  itemBuilder: (context,int index){
                    return ListTile(
                      title: Text(model.articleData[index]['title']),
                      subtitle: Text(model.articleData[index]['body']),

                    );
                  })),
        ),

      ),
    );
  }
}
