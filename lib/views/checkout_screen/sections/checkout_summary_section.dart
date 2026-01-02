import 'package:awor_coffee/consts/consts.dart';

class CheckoutSummarySection extends StatelessWidget {
  final int totalHarga;
  const CheckoutSummarySection({super.key, required this.totalHarga});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rincianPembayaran.text
                .color(blackColor)
                .fontFamily(semibold)
                .size(14)
                .make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                harga.text
                    .fontFamily(regular)
                    .size(13)
                    .color(blackColor)
                    .make(),
                totalHarga.text
                    .fontFamily(regular)
                    .size(13)
                    .color(blackColor)
                    .make(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                totalHarga.text
                    .fontFamily(semibold)
                    .size(13)
                    .color(blackColor)
                    .make(),
                totalHarga.text
                    .fontFamily(semibold)
                    .size(13)
                    .color(blackColor)
                    .make(),
              ],
            ).box.margin(EdgeInsets.symmetric(vertical: 10)).make(),
          ],
        ).box
        .width(double.infinity)
        .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 15))
        .make();
  }
}
