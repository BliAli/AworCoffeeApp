import 'package:awor_coffee/consts/consts.dart';

class CheckoutPaymentSection extends StatelessWidget {
  const CheckoutPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            metodePembayaran.text
                .color(blackColor)
                .fontFamily(semibold)
                .size(14)
                .make(),
            Row(
              children: [
                Image.asset(
                  iconQris,
                  width: 40,
                  height: 40,
                ).box.margin(EdgeInsets.only(right: 10)).make(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      qris.text.size(14).color(greyPoinColor).make(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: brownColor,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ).box
        .width(double.infinity)
        .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 15))
        .withDecoration(
          BoxDecoration(
            border: Border(top: BorderSide(color: brownColor, width: 0.5)),
          ),
        )
        .make();
  }
}
