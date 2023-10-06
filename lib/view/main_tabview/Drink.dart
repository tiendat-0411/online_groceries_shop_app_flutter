// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/fruits_controller.dart';
import 'package:online_groceries/model/Choice.dart';
import 'package:online_groceries/view/main_tabview/list_drinkproducts.dart';

class drinkscreen extends StatefulWidget {
  final Product model;
  final d = Get.put(CardController());

  drinkscreen({super.key, required this.model});
  @override
  State<drinkscreen> createState() => _drinkscreenState();
}

class _drinkscreenState extends State<drinkscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Appbar(), ListDrink()],
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Beverages',
              maxLines: 1,
              style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
