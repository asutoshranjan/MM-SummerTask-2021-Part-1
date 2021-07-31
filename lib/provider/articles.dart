import 'package:flutter/material.dart';
import 'file:///C:/Users/asuto/AndroidStudioProjects/mm_flutter_app/lib/provider/DataView.dart';
import 'package:mm_flutter_app/provider/article_provider.dart';
import 'package:provider/provider.dart';

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          theme: ThemeData.dark(),
          home: DataView(),
        ),
        providers: [ChangeNotifierProvider(create: (_) => ArticleProvider())]);
  }
}
