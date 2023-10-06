// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/fruits_controller.dart';
import 'package:online_groceries/model/Choice.dart';
import 'package:online_groceries/view/main_tabview/Detail.dart';
import 'package:online_groceries/view/main_tabview/utils/asset_path.dart';


class ListChoice1 extends StatelessWidget {
  final c = Get.put(CardController());
  ListChoice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products1.length,         
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffE2E2E2),
                  ),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                     onTap: () {
                       Get.to(DetailScreen(product: products1[index]));
                     },
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Container(
                          height: 99,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                               products1[index].image.toString(),
                                ),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  '${products1[index].name.toString()}',
                              style: TextStyle(
                                  fontFamily: 'Gilroy-bold',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 16)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: RichText(
                          text: TextSpan(
                              text:
                                  '${products1[index].unit.toString()}',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7C7C7C))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, top: 44),
                            child: RichText(
                                text: TextSpan(
                                    text: r" $"
                                        '${products[index].price.toString()}\n',
                                    style: TextStyle(
                                        fontFamily: 'Gilroy-bold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 18),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: IconButton(
                                onPressed: () {
                                  c.addProduct(products1[index]);
                                   print('------index CartProducts1-------'+ products[index].name.toString());
                                },
                                icon: SvgPicture.asset(AssetPath.plus)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}