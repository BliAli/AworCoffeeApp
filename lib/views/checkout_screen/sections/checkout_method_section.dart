import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/checkout_screen/widgets/checkout_section.dart';

import '../widgets/checkout_section_header.dart';

class CheckoutMethodSection extends StatelessWidget {
  const CheckoutMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckoutSection(
      child:
          Column(
                children: [
                  //Pemesanan
                  CheckoutSectionHeader(
                    title: metodePemesanan,
                    actionText: ubah,
                  ),
                  //Pickup Detail
                  Row(
                        children: [
                          Image.asset(
                            icPickUp,
                            width: 35,
                            height: 35,
                            color: blackColor,
                          ).box.margin(EdgeInsets.only(right: 8)).make(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              pickUp.text.bold
                                  .size(15)
                                  .color(blackColor)
                                  .make(),
                              ambilDiOutlet.text
                                  .size(12)
                                  .color(blackColor)
                                  .make(),
                            ],
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
