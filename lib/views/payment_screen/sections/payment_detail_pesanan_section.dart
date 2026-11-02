import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/models/order_item.dart';

class PaymentDetailPesananSection extends StatelessWidget {
  final List<OrderItem> orderItems;
  const PaymentDetailPesananSection({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rincianPesanan.text
            .size(16)
            .fontFamily(bold)
            .color(greyPoinColor)
            .make(),
        Column(
              children:
                  orderItems.map((item) {
                    return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Gambar order
                            Image.asset(
                              item.pict,
                              width: 70,
                              height: 70,
                            ).box.roundedSM.clip(Clip.antiAlias).make(),

                            //Rincian order
                            Expanded(
                              child:
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      item.name.text
                                          .fontFamily(bold)
                                          .color(blackColor)
                                          .size(15)
                                          .make(),
                                      "${item.size}, ${item.ice}, ${item.sugar}"
                                          .text
                                          .fontFamily(regular)
                                          .color(greyCDateColor)
                                          .size(14)
                                          .make(),
                                      Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              "Rp${item.subtotal}".text
                                                  .color(brownColor)
                                                  .size(14)
                                                  .fontFamily(semibold)
                                                  .make(),
                                              Row(
                                                children: [
                                                  qty.text
                                                      .color(brownColor)
                                                      .size(14)
                                                      .fontFamily(semibold)
                                                      .make(),
                                                  item.quantity.text
                                                      .color(blackColor)
                                                      .size(14)
                                                      .fontFamily(semibold)
                                                      .make()
                                                      .box
                                                      .color(lightWhite)
                                                      .padding(
                                                        EdgeInsets.symmetric(
                                                          horizontal: 10,
                                                          vertical: 2,
                                                        ),
                                                      )
                                                      .margin(
                                                        EdgeInsets.only(
                                                          left: 5,
                                                          top: 5,
                                                        ),
                                                      )
                                                      .roundedSM
                                                      .make(),
                                                ],
                                              ).box.make(),
                                            ],
                                          ).box
                                          .margin(EdgeInsets.only(top: 2))
                                          .withDecoration(
                                            BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: greyColor,
                                                  width: 2,
                                                ),
                                              ),
                                            ),
                                          )
                                          .make(),
                                    ],
                                  ).box.margin(EdgeInsets.only(left: 10)).make(),
                            ),
                          ],
                        ).box
                        .padding(
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        )
                        .make();
                  }).toList(),
            ).box
            .width(context.screenWidth)
            .roundedSM
            .margin(EdgeInsets.symmetric(vertical: 15))
            .make(),
      ],
    );
  }
}
