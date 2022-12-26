//flutter
import 'package:flutter/material.dart';
import 'dart:convert';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final homeProvider = ChangeNotifierProvider((ref) => HomeModel());

class HomeModel extends ChangeNotifier {
  List items = [];

  HomeModel() {
    getData();
  }

  Future<void> getData() async {
    var response = await http.get(Uri.https(
        'www.googleapis.com',
        '/books/v1/volumes',
        {'q': '{Flutter}', 'maxResults': '40', 'langRestrict': 'ja'}));

    var jsonResponse = jsonDecode(response.body);

    items = jsonResponse['items'];
    notifyListeners();
  }
}
