// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/fruits_controller.dart';
import 'package:online_groceries/model/Choice.dart';
import 'package:online_groceries/view/main_tabview/Detail.dart';
import 'package:online_groceries/view/main_tabview/utils/asset_path.dart';


class ListMeat extends StatelessWidget {
    final c = Get.put(CardController());
 ListMeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,       
          itemCount: products2.length,
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
                        Get.to(DetailScreen(product: products2[index]));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 99,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                 products2[index].image.toString(),
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
                        padding: const EdgeInsets.only(left: 8),
                        child: RichText(
                          text: TextSpan(
                              text: '${products2[index].name.toString()}',
                              style: TextStyle(
                                  fontFamily: 'Gilroy-bold',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 16)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 5),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  '${products2[index].unit.toString()}\n',
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
                            padding: const EdgeInsets.only(left: 5, top: 27),
                            child: RichText(
                                text: TextSpan(
                                    text: r" $"
                                        '${products2[index].price.toString()}\n',
                                    style: TextStyle(
                                        fontFamily: 'Gilroy-bold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: IconButton(
                                onPressed: () {
                                  c.addProduct(products[index]);
                                      print('------index CartProducts2 -------'+ index.toString());
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
