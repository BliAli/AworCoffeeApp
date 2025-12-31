import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: brownColor,
            width: 0.5
          )
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: child,
    );
  }
}
