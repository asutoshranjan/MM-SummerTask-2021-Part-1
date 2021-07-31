import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ArticleProvider extends ChangeNotifier{

  final httpClient = http.Client();
  List<dynamic> articleData;


  //Get Request
    Future fetchData() async{
      
      final Uri restAPIURL = Uri.parse("http://localhost:3000/api/article/all");
      http.Response response = await httpClient.get(restAPIURL);
      final Map parsedData = await json.decode(response.body.toString());
      articleData = parsedData['data'];
      print(articleData);
    }

}