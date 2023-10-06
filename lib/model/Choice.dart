// ignore_for_file: file_names, use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries/view/main_tabview/utils/asset_path.dart';


class Product {
  final String? name;
  final String? unit;
  final double? price;
  final String? image;
  final String? detail;
  final String? text;
  final Color? color;
  final int? id;
  Product(
      {this.name,
      this.unit,
      this.price,
      this.image,
      this.detail,
      this.text,
      this.color,
      this.id});
}

List<Product> products = [
  Product(
    name: 'Organic Bananas',
    unit: '1kg,Price',
    price: 3.00,
    image: AssetPath.banana,
    text: 'Bananas',
  ),
  Product(
    name: 'Red Apple ',
    unit: '1kg,Price',
    price: 4.99,
    image: AssetPath.apple,
    text: 'Apple',
  ),
  Product(
      name: 'Bell Pepper Red',
      unit: '7pcs,Priceg',
      price: 4.99,
      image: AssetPath.pepper,
      text: 'Pepper'),
  Product(
      name: 'Ginger ',
      unit: '1kg,Priceg',
      price: 4.99,
      image: AssetPath.ginger,
      text: 'Ginger'),
  Product(
      name: 'Beef Bone',
      unit: '7pcs,Priceg',
      price: 4.99,
      image: AssetPath.beefbone,
      text: 'Beef Bone'),
  Product(
      name: 'Chicken',
      unit: '1kg,Priceg',
      price: 4.99,
      image: AssetPath.chicken,
      text: 'Chicken'),
  Product(
      name: '  Diet Coke',
      unit: '  355ml,Price',
      price: 1.99,
      image: AssetPath.coke,
      text: 'Coke'),
  Product(
      name: '  Sprite Can ',
      unit: '  325ml,Price',
      price: 1.50,
      image: AssetPath.sprite),
  Product(
      name: '  Apple & Grape Juice',
      unit: '  2L,Price',
      price: 15.99,
      image: AssetPath.applejuice),
  Product(
      name: '  Orange Juice',
      unit: '  2L,Price',
      price: 15.99,
      image: AssetPath.orangejuice),
  Product(
      name: '  Coca',
      unit: '  325ml,Price',
      price: 4.99,
      image: AssetPath.coca),
  Product(
      name: '  Pepsi',
      unit: '  330,Price',
      price: 4.99,
      image: AssetPath.pepsi),
];

List<Product> products1 = [
  Product(
      name: 'Bell Pepper Red',
      unit: '7pcs,Priceg',
      price: 4.99,
      image: AssetPath.pepper,
      text: 'Pepper'),
  Product(
      name: 'Ginger ',
      unit: '1kg,Priceg',
      price: 4.99,
      image: AssetPath.ginger,
      text: 'Ginger'),
];
List<Product> products2 = [
  Product(
      name: 'Beef Bone',
      unit: '7pcs,Priceg',
      price: 4.99,
      image: AssetPath.beefbone,
      text: 'Beef Bone'),
  Product(
      name: 'Chicken',
      unit: '1kg,Priceg',
      price: 4.99,
      image: AssetPath.chicken,
      text: 'Chicken'),
];
List<Product> products3 = [
  Product(
      name: '  Diet Coke',
      unit: '  355ml,Price',
      price: 1.99,
      image: AssetPath.coke,
      text: 'Coke'),
  Product(
      name: '  Sprite Can ',
      unit: '  325ml,Price',
      price: 1.50,
      image: AssetPath.sprite),
  Product(
      name: '  Apple & Grape Juice',
      unit: '  2L,Price',
      price: 15.99,
      image: AssetPath.applejuice),
  Product(
      name: '  Orange Juice',
      unit: '  2L,Price',
      price: 15.99,
      image: AssetPath.orangejuice),
  Product(
      name: '  Coca',
      unit: '  325ml,Price',
      price: 4.99,
      image: AssetPath.coca),
  Product(
      name: '  Pepsi',
      unit: '  330,Price',
      price: 4.99,
      image: AssetPath.pepsi),
];
List<Product> products4 = [
  Product(
      name: 'Fresh Fruits\n& Vegetable',
      image: AssetPath.fruit,
      color: Color(0xff53B175)),
  Product(
      name: ' Cooking Oil \n   & Ghee ',
      image: AssetPath.oil,
      color: Color(0xffF8A44CB2)),
  Product(
      name: 'Meat & Fish ', image: AssetPath.meat, color: Color(0xffF7A593)),
  Product(
      name: 'Bakery & Snacks ',
      image: AssetPath.bread,
      color: Color(0xffD3B0E0)),
  Product(
      name: 'Dairy & Eggs', image: AssetPath.milk, color: Color(0xffD3B0E0)),
  Product(name: 'Beverages', image: AssetPath.drink, color: Color(0xffB7DFF5)),
];
List<Product> products5 = [
  Product(
      name: ' Egg Chicken Red ',
      unit: ' 4pcs,Price',
      price: 1.99,
      image: AssetPath.eggs),
  Product(
      name: ' Egg Chicken White ',
      unit: ' 180g,Price',
      price: 1.50,
      image: AssetPath.eggs1),
  Product(
      name: ' Egg Pasta ',
      unit: ' 30gm,Price',
      price: 15.99,
      image: AssetPath.pasta),
  Product(
      name: ' Egg Noodles ',
      unit: ' 2L,Price',
      price: 15.99,
      image: AssetPath.rednoodle),
  Product(
      name: ' Mayonnais Eggless ',
      unit: ' 325ml,Price',
      price: 4.99,
      image: AssetPath.eggmilk),
  Product(
      name: ' Egg Chicken White ',
      unit: ' 330ml,Price',
      price: 4.99,
      image: AssetPath.eggsnoodle),
];
