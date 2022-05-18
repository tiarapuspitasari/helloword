import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MaterialApp(
    title: "belajar Images",
    home: BelajarGambarNetwork(),
  ));
}

class BelajarGambarNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Image"),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: "https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Text("Koneksi Error"),
        ),
      ),
    );
  }
}
