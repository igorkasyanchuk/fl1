import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      }
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0)
      ),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          Text(image.title, style: TextStyle(fontWeight: FontWeight.w300),)
        ]
      )
    );
  }

}
