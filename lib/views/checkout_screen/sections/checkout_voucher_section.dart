import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/checkout_screen/widgets/checkout_section.dart';

class CheckoutVoucherSection extends StatelessWidget {
  const CheckoutVoucherSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckoutSection(
      child:
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //voucher belanja
                  voucherBelanja.text
                      .color(blackColor)
                      .fontFamily(semibold)
                      .size(14)
                      .make(),
                  //Voucher Detail
                  Row(
                        children: [
                          Image.asset(
                                icVoucher,
                                width: 30,
                                height: 30,
                                color: whiteColorP,
                              ).box.roundedFull
                              .color(blackColor)
                              .padding(EdgeInsets.all(3))
                              .margin(EdgeInsets.only(right: 8))
                              .make(),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                pilihVoucher.text
                                    .fontFamily(bold)
                                    .color(blackColor)
                                    .size(15)
                                    .make(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      12,
                                    ),
                                    color: brownColor,
                                  ),
                                  child:
                                      pilih.text
                                          .fontFamily(bold)
                                          .size(10)
                                          .color(whiteColorP)
                                          .make(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).box
                      .border(color: brownColor, width: 1)
                      .rounded
                      .padding(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      )
                      .margin(EdgeInsets.symmetric(vertical: 10))
                      .make(),
                ],
              )
    );
  }
}
