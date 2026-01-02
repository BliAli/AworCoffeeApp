import 'package:awor_coffee/consts/consts.dart';

class PaymentCardViaPesanan extends StatelessWidget {
  const PaymentCardViaPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.phone_android_rounded, color: greyColor, size: 25),
                5.widthBox,
                pemesesananLewatApp.text
                    .color(greyPoinColor)
                    .size(14)
                    .fontFamily(regular)
                    .make(),
              ],
            ),
            pickUp.text
                .color(greyPoinColor)
                .size(14)
                .fontFamily(regular)
                .make(),
          ],
        ).box
        .color(whiteColorP)
        .rounded
        .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 5))
        .make();
  }
}
