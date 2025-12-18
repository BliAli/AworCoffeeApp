import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

enum SweetLevel { less, normal, extra }

class SweetnessSelector extends StatelessWidget {
  final SweetLevel selectedSweetness;
  final Function(SweetLevel) onChanged;
  const SweetnessSelector({
    super.key,
    required this.selectedSweetness,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sweetness.text.size(16).fontFamily(semibold).make(),

            _sweetOption(
              title: lessSweet,
              price: gratis,
              value: SweetLevel.less,
            ),

            _sweetOption(
              title: normalSewwt,
              price: gratis,
              value: SweetLevel.normal,
            ),

            _sweetOption(
              title: extraSweet,
              price: gratis,
              value: SweetLevel.extra,
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

  Widget _sweetOption({
    required String title,
    required String price,
    required SweetLevel value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.color(brownColor).make(),
        Row(
          children: [
            price.text.color(brownColor).make(),
            Radio<SweetLevel>(
              value: value,
              groupValue: selectedSweetness,
              activeColor: brownColor,
              onChanged: (v) => onChanged(v!),
            ),
          ],
        ),
      ],
    );
  }
}
