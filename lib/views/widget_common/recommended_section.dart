import 'package:awor_coffee/views/pickup_screen/menu_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class RecommendedSection extends StatelessWidget {
  final List<String> pic, name, des, price;

  const RecommendedSection({
    super.key,
    required this.pic,
    required this.name,
    required this.des,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        recommend.text
            .fontFamily(semibold)
            .color(blackColor)
            .size(15)
            .make()
            .box
            .margin(EdgeInsets.only(left: 20, top: 10))
            .make(),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(name.length, (index) {
              return _recommendedCard(context, index);
            }),
          ),
        ),
      ],
    );
  }

  Widget _recommendedCard(BuildContext context, int index) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(pic[index], width: 130, height: 120, fit: BoxFit.cover)
                .box
                .roundedSM
                .clip(Clip.antiAlias)
                .margin(EdgeInsets.only(right: 10))
                .make(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name[index].text
                          .color(greyPoinColor)
                          .fontFamily(semibold)
                          .size(14)
                          .overflow(TextOverflow.visible)
                          .make(),
                      3.heightBox,
                      des[index].text
                          .color(greyPoinColor)
                          .fontFamily(semibold)
                          .size(12)
                          .overflow(TextOverflow.visible)
                          .make(),
                    ],
                  ),
                  "Rp ${price[index]}".text
                      .color(greyPoinColor)
                      .fontFamily(semibold)
                      .size(12)
                      .overflow(TextOverflow.visible)
                      .make(),
                ],
              ),
            ),
          ],
        ).box
        .width(context.screenWidth * 0.85)
        .height(135)
        .roundedSM
        .shadowSm
        .color(whiteColorP)
        .margin(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
        .padding(EdgeInsets.all(8))
        .make()
        .onTap(() {
          Get.to(
            () => MenuDetail(
              menuPic: pic[index],
              menuName: name[index],
              menuDes: des[index],
              menuPrice: price[index],
              menuType: name[index] == matchaLatte ? nonCoffee : pastries,
            ),
          );
        });
  }
}
