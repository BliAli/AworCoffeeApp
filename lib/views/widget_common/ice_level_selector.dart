import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

enum IceLevel { less, normal, extra, separate }

class IceLevelSelector extends StatelessWidget {
  final IceLevel selectedIce;
  final Function(IceLevel) onChanged;

  const IceLevelSelector({
    super.key,
    required this.selectedIce,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            iceLevel.text.size(16).fontFamily(semibold).make(),

            _iceOption(
              title: lessIce,
              price: gratis,
              value: IceLevel.less,
            ),

            _iceOption(
              title: normalIce,
              price: gratis,
              value: IceLevel.normal,
            ),

            _iceOption(
              title: extraIce,
              price: gratis,
              value: IceLevel.extra,
            ),

            _iceOption(
              title: separateTheIce,
              price: priceSeparateIce,
              value: IceLevel.separate,
            ),
          ],
        ).box
        .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
        .withDecoration(
          BoxDecoration(
            border: Border(bottom: BorderSide(color: brownColor, width: 1)),
          ),
        )
        .width(context.screenWidth)
        .make();
  }

  Widget _iceOption({
    required String title,
    required String price,
    required IceLevel value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.color(brownColor).make(),
        Row(
          children: [
            price.text.color(brownColor).make(),
            Radio<IceLevel>(
              value: value,
              groupValue: selectedIce,
              activeColor: brownColor,
              onChanged: (v) => onChanged(v!),
            ),
          ],
        ),
      ],
    );
  }
}
