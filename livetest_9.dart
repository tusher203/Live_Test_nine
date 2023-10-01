import 'package:flutter/material.dart';
final List<String> dummyImages1 = [
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  // Add more image URLs here
];
final List<String> dummyImages2 = [
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  "https://via.placeholder.com/150",
  // Add more image URLs here
];
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFeed(),
    );
  }
}

class ImageFeed extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: (orientation == Orientation.portrait)
          ? Scrollbar(
            child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Image.network(
                  dummyImages2[index],
                  width: 150,
                  height: 150,
                ),
              ),
            );
        },
      ),
          )
          : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: dummyImages1.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                dummyImages1[index],
                width: 150,
                height: 150,
              ),
            ),
          );
        },
      ),
    );
  }
}
