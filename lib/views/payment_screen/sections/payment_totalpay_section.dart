import '../../../consts/consts.dart';

class PaymentTotalpaySection extends StatelessWidget {
  final int totalPrice;
  const PaymentTotalpaySection({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        totalPembayaran.text.fontFamily(semibold).size(15).make(),
        5.heightBox,
        "Rp$totalPrice".text.fontFamily(bold).size(16).make(),
      ],
    );
  }
}
