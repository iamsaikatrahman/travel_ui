import 'package:flutter/cupertino.dart';

class CarouselModel {
  String? imgUrl;
  String? title;
  String? subtitle;
  CarouselModel({
    @required this.imgUrl,
    @required this.title,
    @required this.subtitle,
  });
  factory CarouselModel.fromJson(Map<String, dynamic> json) => CarouselModel(
        imgUrl: json['imgUrl'],
        title: json['title'],
        subtitle: json['subtitle'],
      );
  Map<String, dynamic> tojson() => {
        'imgUrl': imgUrl,
        'title': title,
        'subtitle': subtitle,
      };
}
