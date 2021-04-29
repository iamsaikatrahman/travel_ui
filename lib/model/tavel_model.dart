import 'package:flutter/cupertino.dart';

class TravelModel {
  String? imgUrl;
  String? placeName;
  String? description;
  String? shortdes;
  double? rating;
  double? price;
  TravelModel({
    @required this.imgUrl,
    @required this.placeName,
    @required this.description,
    @required this.shortdes,
    @required this.rating,
    @required this.price,
  });
  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
        imgUrl: json['imgUrl'],
        placeName: json['placeName'],
        description: json['description'],
        shortdes: json['shortdes'],
        rating: json['rating'],
        price: json['price'],
      );
  Map<String, dynamic> toJson() => {
        'imgUrl': imgUrl,
        'placeName': placeName,
        'description': description,
        'shortdes': shortdes,
        'rating': rating,
        'price': price,
      };
}
