// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/model/Choice.dart';
import 'package:online_groceries/view/main_tabview/Drink.dart';


class ListFind extends StatelessWidget {
  const ListFind({super.key, });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 1000,
      child: GridView.count(
        childAspectRatio: size / 500,
        crossAxisCount: 2,
        children: List.generate(products4.length, (index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
            child: Container(
              decoration: BoxDecoration(
                color: products4[index].color,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(
                  width: 1.0,
                  color: Colors.green,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(drinkscreen(model: products4[index]));
                    },
                    child: Container(
                      height: 170,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                             products4[index].image.toString(),
                              ),
                              fit: BoxFit.none),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                        text: '${products4[index].name.toString()}\n',
                        style: TextStyle(
                            fontFamily: 'Gilroy-bold',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16)),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
