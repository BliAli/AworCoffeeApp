import '../../../consts/consts.dart';

class PaymentHeaderSection extends StatelessWidget {
  const PaymentHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            selesaikanPembayaran.text.color(greyColor).size(14).make(),
            paymentTime.text.color(darkRedColor).size(14).make(),
          ],
        ).box
        .color(redNotifColor)
        .padding(EdgeInsets.symmetric(horizontal: 35, vertical: 10))
        .margin(EdgeInsets.only(bottom: 30))
        .make();
  }
}
