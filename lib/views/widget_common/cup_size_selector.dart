import 'package:awor_coffee/consts/consts.dart';

enum CupSize { regular, large }

class CupSizeSelector extends StatelessWidget {
  final CupSize selectedSize;
  final Function(CupSize) onChanged;

  const CupSizeSelector({
    super.key,
    required this.selectedSize,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ukuranCup.text.size(16).fontFamily(semibold).make(),

            _sizeOption(
              title: regularSize,
              price: gratis,
              value: CupSize.regular,
            ),

            _sizeOption(
              title: largeSize,
              price: priceLarge,
              value: CupSize.large,
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

  Widget _sizeOption({
    required String title,
    required String price,
    required CupSize value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.color(brownColor).make(),
        Row(
          children: [
            price.text.color(brownColor).make(),
            Radio<CupSize>(
              value: value,
              groupValue: selectedSize,
              activeColor: brownColor,
              onChanged: (v) => onChanged(v!),
            ),
          ],
        ),
      ],
    );
  }
}
