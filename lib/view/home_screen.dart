//flutter
import 'package:flutter/material.dart';
import 'package:flutter_api_prac/model/home_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeModel homeModel = ref.watch(homeProvider);
    final items = homeModel.items;
    return Scaffold(
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.network(
                        items[index]['volumeInfo']['imageLinks']['thumbnail'],
                      ),
                      title: Text(items[index]['volumeInfo']['title']),
                      subtitle:
                          Text(items[index]['volumeInfo']['publishedDate']),
                    ),
                  ],
                ),
              );
            }));
  }
}
