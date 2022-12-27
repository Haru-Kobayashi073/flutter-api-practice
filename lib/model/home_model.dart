//flutter
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final homeProvider = ChangeNotifierProvider((ref) => HomeModel());

class HomeModel extends ChangeNotifier {
  List items = [];
  bool isError = false;

  HomeModel() {
    getBooksData();
  }

  Future<void> getBooksData() async {
    try {
      var response = await http.get(Uri.https(
          'www.googleapis.com',
          '/books/v1/volumes',
          {'q': '{Flutter}', 'maxResults': '40', 'langRestrict': 'ja'}));

      //json形式のbodyをitemsに格納
      var jsonResponse = jsonDecode(response.body);

      items = jsonResponse['items'];
      notifyListeners();
    } on SocketException catch (socketException) {
      // ソケット操作が失敗した時にスローされる例外
      debugPrint("Error: ${socketException.toString()}");
      isError = true;
    } on Exception catch (exception) {
      // statusCode: 200以外の場合
      debugPrint("Error: ${exception.toString()}");
      isError = true;
    } catch (_) {
      debugPrint("Error: 何かしらの問題が発生しています");
      isError = true;
    }
  }
}
