// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/fruits_controller.dart';
import 'package:online_groceries/model/Choice.dart';
import 'package:online_groceries/view/main_tabview/utils/asset_path.dart';


class ListDrink extends StatelessWidget {
  final f = Get.put(CardController());
  ListDrink({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
      height: 720,
      child: GridView.count(
        childAspectRatio: size / 500,       
        crossAxisCount: 2,
        children: List.generate(
      products3.length,
          (index) {
            return Padding(
              padding:
                 EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffE2E2E2),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 5),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                             products3[index].image.toString(),
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: '${products3[index].name.toString()}',
                            style: TextStyle(
                                fontFamily: 'Gilroy-bold',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(top: 5, bottom: 18),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  '${products3[index].unit.toString()}\n',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff7C7C7C))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: RichText(
                                text: TextSpan(
                                    text: r" $"
                                        '${products3[index].price.toString()}\n',
                                    style: TextStyle(
                                        fontFamily: 'Gilroy-bold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: IconButton(
                                onPressed: () {
                                  f.addProduct(products3[index]);
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
          },
        ),
      ),
    );
  }
}
