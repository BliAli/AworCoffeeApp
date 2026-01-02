import 'package:flutter/material.dart';
import '../../consts/consts.dart';

class CategoryMenu extends StatelessWidget {
  final List<String> menuList;
  final int selectedIndex;
  final Function(int) onTap;

  const CategoryMenu({
    super.key,
    required this.menuList,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
          Row(
                children: List.generate(menuList.length, (index) {
                  bool isRecommended = menuList[index] == 'Recommended';
                  final isSelected = selectedIndex == index;
                  return Row(
                        children: [
                          menuList[index].text
                              .fontFamily(regular)
                              .color(isSelected ? Colors.white : darkGreyColor)
                              .size(13)
                              .make(),
                          if (isRecommended)
                            Icon(
                              Icons.star_border_outlined,
                              size: 20,
                              color: isSelected ? Colors.white : darkGreyColor,
                            ),
                        ],
                      ).box
                      .color(isSelected ? brownColor : whiteColorP)
                      .border(color: blackColor)
                      .rounded
                      .padding(
                        EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      )
                      .margin(EdgeInsets.symmetric(horizontal: 2.5))
                      .make()
                      .onTap(() => onTap(index));
                }),
              ).box
              .margin(EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 5))
              .make(),
    );
  }
}
