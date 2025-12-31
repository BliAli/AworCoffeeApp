import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/checkout_screen/widgets/checkout_section.dart';

import '../widgets/checkout_section_header.dart';

class CheckoutAddressSection extends StatelessWidget {
  const CheckoutAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckoutSection(
      child: Column(
        children: [
          //Alamat
          CheckoutSectionHeader(title: alamatPesanan, actionText: ubah),
          //Detail alamat
          Row(
            children: [
              Icon(Icons.store, size: 30, color: whiteColorP).box
                  .padding(EdgeInsets.all(3.5))
                  .roundedFull
                  .color(brownColor)
                  .margin(EdgeInsets.only(right: 18))
                  .make(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    aworGallery.text
                        .fontFamily(regular)
                        .color(darkGreyColor)
                        .make(),
                    Row(
                      children: [
                        distanceGallery.text
                            .fontFamily(regular)
                            .color(Vx.blue500)
                            .make(),
                        6.widthBox,
                        dariLokasimu.text
                            .fontFamily(regular)
                            .color(darkGreyColor)
                            .make(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ).box.margin(EdgeInsets.symmetric(vertical: 12)).make(),

          //Estimasi Tiba
          Row(
                children: [
                  Icon(
                    Icons.access_time_filled_rounded,
                    color: brownColor,
                  ).box.margin(EdgeInsets.only(right: 18)).make(),
                  estimasiPesanan.text
                      .color(darkGreyColor)
                      .fontFamily(regular)
                      .make(),
                ],
              ).box.rounded
              .color(whiteColorP)
              .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
              .make(),
        ],
      ),
    );
  }
}
