import '../../../consts/consts.dart';

class PaymentMethodPaySection extends StatelessWidget {
  const PaymentMethodPaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        metodePembayaran.text
            .size(16)
            .fontFamily(bold)
            .color(greyPoinColor)
            .make(),
        Image.asset(iconQris, width: 40, height: 40).box
            .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
            .roundedSM
            .alignCenterLeft
            .width(double.infinity)
            .color(whiteColorP)
            .make(),
      ],
    );
  }
}
