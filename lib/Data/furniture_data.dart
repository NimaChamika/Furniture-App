import 'package:flutter/cupertino.dart';

List<String> furnitureTypeList = [
  "All",
  "Sofa",
  "Park Bench",
  "Arm Chair",
  "Desk"
];

List<FurnitureInfo> furnitureInfoList = [
  new FurnitureInfo(
    name: "Classic Leather\nArm Chair", 
    price: 100, 
    imageUrl: 'assets/images/Item_1.png', 
    backgroundColor: Color.fromARGB(255, 0, 0, 255)
  ),
  new FurnitureInfo(
    name: "Poppy Plastic\nTub Chair", 
    price: 65, 
    imageUrl: 'assets/images/Item_2.png', 
    backgroundColor: Color.fromARGB(255, 204, 51, 255)
  ),
  new FurnitureInfo(
    name: "Bar stool\nChair", 
    price: 35, 
    imageUrl: 'assets/images/Item_3.png', 
    backgroundColor: Color.fromARGB(255,26, 255, 26)
  ),
  new FurnitureInfo(
    name: "Classic Rocking\nChair", 
    price: 75, 
    imageUrl: 'assets/images/Item_1.png', 
    backgroundColor: Color.fromARGB(255, 255, 51, 0)
  ),
];



class FurnitureInfo
{
  final String name;
  final int price;
  final String imageUrl;
  final Color backgroundColor;

  FurnitureInfo({
    @required this.name, 
    @required this.price, 
    @required this.imageUrl, 
    @required this.backgroundColor
  });
}