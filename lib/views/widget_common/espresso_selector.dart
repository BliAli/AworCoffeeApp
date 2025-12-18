import 'package:awor_coffee/consts/consts.dart';

enum AddEspresso { singleShot, doubleShot }

class EspressoSelector extends StatelessWidget {
  final AddEspresso? selectedEspresso;
  final ValueChanged<AddEspresso?> onChanged;
  const EspressoSelector({
    super.key,
    required this.selectedEspresso,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addEspresso.text.size(16).fontFamily(semibold).make(),

            _espressoOption(
              title: add1,
              price: price1Shot,
              value: AddEspresso.singleShot,
            ),

            _espressoOption(
              title: add2,
              price: price2Shot,
              value: AddEspresso.doubleShot,
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

  Widget _espressoOption({
    required String title,
    required String price,
    required AddEspresso value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.color(brownColor).make(),
        Row(
          children: [
            price.text.color(brownColor).make(),
            Radio<AddEspresso>(
              value: value,
              toggleable: true,
              groupValue: selectedEspresso,
              activeColor: brownColor,
              onChanged: (v) {
                if (selectedEspresso == v) {
                  onChanged(null);
                } else {
                  onChanged(v);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
