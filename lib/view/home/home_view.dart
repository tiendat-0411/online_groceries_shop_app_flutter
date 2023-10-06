// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/view/home/product_details_view.dart';
import 'package:online_groceries/view/main_tabview/list_products.dart';
import 'package:online_groceries/view/main_tabview/list_products1.dart';
import 'package:online_groceries/view/main_tabview/list_products2.dart';

import '../../common/color_extension.dart';
import '../../common_widget/product_cell.dart';
import '../../common_widget/section_view.dart';
import '../../view_model/cart_view_model.dart';
import '../../view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  final homeVM = Get.put(HomeViewModel());

  @override
  void dispose() {
    Get.delete<HomeViewModel>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/color_logo.png",
                    width: 25,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search Store",
                      hintStyle: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: double.maxFinite,
                    height: 115,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/banner_top.png",
                      fit: BoxFit.cover,
                    )),
              ),
              SectionView(
                title: "Exclusive Offer",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              ListFruit(),
              // SizedBox(
              //   height: 230,
              //   child: Obx(
              //     () => ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         padding: const EdgeInsets.symmetric(horizontal: 15),
              //         itemCount: homeVM.offerArr.length,
              //         itemBuilder: (context, index) {
              //           var pObj = homeVM.offerArr[index];

              //           return ProductCell(
              //             pObj: pObj,
              //             onPressed: () async {
              //               await Get.to(() => ProductDetails(
              //                     pObj: pObj,
              //                   ));

              //               homeVM.serviceCallHome();
              //             },
              //             onCart: () {
              //               CartViewModel.serviceCallAddToCart(
              //                   pObj.prodId ?? 0, 1, () {});
              //             },
              //           );
              //         }),
              //   ),
              // ),
              SectionView(
                title: "Best Selling",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              ListChoice1(),
              SectionView(
                title: "Groceries",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              ListMeat(),
              // SizedBox(
              //   height: 100,
              //   child: Obx(
              //     () => ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         padding: const EdgeInsets.symmetric(horizontal: 15),
              //         itemCount: homeVM.groceriesArr.length,
              //         itemBuilder: (context, index) {
              //           var pObj = homeVM.groceriesArr[index];

              //           return CategoryCell(
              //             pObj: pObj,
              //             onPressed: () {},
              //           );
              //         }),
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 230,
                child: Obx(
                  () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: homeVM.listArr.length,
                      itemBuilder: (context, index) {
                        var pObj = homeVM.listArr[index];

                        return ProductCell(
                          pObj: pObj,
                          onPressed: () async {
                            await Get.to(() => ProductDetails(
                                  pObj: pObj,
                                ));

                            homeVM.serviceCallHome();
                          },
                          onCart: () {
                            CartViewModel.serviceCallAddToCart(
                                pObj.prodId ?? 0, 1, () {});
                          },
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
