// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/fruits_controller.dart';
import 'package:online_groceries/model/Choice.dart';


class DetailScreen extends StatefulWidget {
  final c = Get.put(CardController());
  final Product product;
  DetailScreen({super.key, required this.product});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  get index => CardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 30,
                right: 0,
                top: 80,
                child: Container(
                    width: 100,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.image.toString()),
                          fit: BoxFit.contain),
                    ))),
            Positioned(
              left: 20,
              top: 60,
              child: Container(
                color: Color(0xffF2F3F2),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.product.name.toString(),
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline)),
                          ],
                        ),
                        Text(
                          widget.product.unit.toString(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle_outlined)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outlined)),
                                ],
                              ),
                              Text(
                                widget.product.price.toString() + r"$",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Color(0xffE2E2E2B2),
                    ),
                    ProductDetail(),
                    Information(widget: widget),
                    Container(
                      height: 1,
                      color: Color(0xffE2E2E2B2),
                    ),
                    Nutritions(),
                    Container(
                      height: 1,
                      color: Color(0xffE2E2E2B2),
                    ),
                    Review(),
                    AddtoBasket(widget: widget,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Review',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        RateStars(),
        IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next))
      ],
    );
  }
}

class Nutritions extends StatelessWidget {
  const Nutritions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Nutritions',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next))
      ],
    );
  }
}

class Information extends StatelessWidget {
  const Information({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.product.text} are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      style: TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: 16,
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Products Detail',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
      ],
    );
  }
}

class RateStars extends StatelessWidget {
  const RateStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorDot(
          color: Color(0xff53B175),
          isActive: false,
          press: (() {}),
        ),
        ColorDot(
          color: Color(0xff53B175),
          isActive: false,
          press: (() {}),
        ),
        ColorDot(
          color: Color(0xff53B175),
          isActive: false,
          press: (() {}),
        ),
        ColorDot(
          color: Color(0xff53B175),
          isActive: false,
          press: (() {}),
        ),
        ColorDot(
          color: Color(0xff53B175),
          isActive: false,
          press: (() {}),
        ),
      ],
    );
  }
}

class AddtoBasket extends StatelessWidget {
  const AddtoBasket({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: 400,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff53B175), shape: StadiumBorder()),
          onPressed: () {
            // widget.c.addProduct(products[index]);
          },
          child: Text(
            'Add to Basket',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    required this.color,
    required this.isActive,
    required this.press,
    Key? key,
  }) : super(key: key);
  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: IconButton(onPressed: () {}, icon: Icon(Icons.star_border)));
  }
}
