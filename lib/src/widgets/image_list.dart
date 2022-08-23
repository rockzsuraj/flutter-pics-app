import 'package:flutter/material.dart';
import '../model/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images ;
  ImageList(this.images);

  Widget build(context){
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage (ImageModel images) {
    return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Padding(
               child: Image.network(images.url),
               padding: EdgeInsets.only(bottom: 8.0),
            ),
            Text(images.title),
          ]),
          // child: Text(images[index].title)
        );
      }
}