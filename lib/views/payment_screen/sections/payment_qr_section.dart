import '../../../consts/consts.dart';

class PaymentQrSection extends StatelessWidget {
  const PaymentQrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
              qrCode,
              width: context.screenWidth * 0.8,
              height: context.screenHeight * 0.25,
            ).box
            .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 20))
            .withDecoration(
              BoxDecoration(
                border: Border(bottom: BorderSide(width: 2, color: blackColor)),
              ),
            )
            .make(),

        //Order Id
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            orderId.text.color(blackColor).fontFamily(bold).size(16).make(),
            idOrder.text.color(blackColor).fontFamily(bold).size(16).make(),
          ],
        ).box.margin(EdgeInsets.symmetric(vertical: 15)).make(),
      ],
    );
  }
}
