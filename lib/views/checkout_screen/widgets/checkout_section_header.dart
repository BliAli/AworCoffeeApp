import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

class CheckoutSectionHeader extends StatelessWidget {
  const CheckoutSectionHeader({
    super.key,
    required this.title,
    required this.actionText,
    this.onTap,
  });
  final String title;
  final String actionText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.fontFamily(semibold).size(14).color(blackColor).make(),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: brownColor,
            ),
            child:
                actionText.text
                    .fontFamily(bold)
                    .size(10)
                    .color(whiteColorP)
                    .make(),
          ),
        ),
      ],
    );
  }
}
