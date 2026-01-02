import 'package:flutter/material.dart';

import '../../../consts/consts.dart';

class PaymentCardDate extends StatelessWidget {
  const PaymentCardDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            datePemesanan.text
                .color(greyPoinColor)
                .size(14)
                .fontFamily(regular)
                .make(),
            timePemesanan.text
                .color(Colors.blueAccent)
                .size(14)
                .fontFamily(regular)
                .make(),
          ],
        ).box
        .color(whiteColorP)
        .rounded
        .margin(EdgeInsets.symmetric(vertical: 10))
        .padding(EdgeInsets.symmetric(horizontal: 22, vertical: 5))
        .make();
  }
}
