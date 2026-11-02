import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/models/order_item.dart';

import '../widgets/checkout_section_header.dart';

class CheckoutOrderDetailSection extends StatelessWidget {
  final List<OrderItem> orderItems;
  final Function(int) onAdd;
  final Function(int) onRemove;

  const CheckoutOrderDetailSection({
    super.key,
    required this.orderItems,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckoutSectionHeader(title: detailPesanan, actionText: tambah),

        Column(
          children: orderItems.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;

            return Column(
              children: [
                // ===== Infomrasi Pesanan =====
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.name.text
                              .fontFamily(semibold)
                              .size(14)
                              .make(),
                          '${item.size}, ${item.ice}, ${item.sugar}'
                              .text
                              .size(12)
                              .color(greyCDateColor)
                              .make(),
                        ],
                      ),
                    ),
                    Image.asset(
                      item.pict,
                      width: 50,
                      height: 50,
                    ).box.roundedSM.clip(Clip.antiAlias).make(),
                  ],
                ),

                10.heightBox,

                // ===== Harga & Jumlah Pesanan =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Rp ${item.subtotal}'
                        .text
                        .fontFamily(semibold)
                        .size(13)
                        .make(),

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => onRemove(index),
                          child: Icon(Icons.remove, color: whiteColorP)
                              .box
                              .roundedFull
                              .color(brownColor)
                              .make(),
                        ),

                        Container(
                          margin: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: item.quantity.text
                              .fontFamily(semibold)
                              .size(13)
                              .make(),
                        ),

                        GestureDetector(
                          onTap: () => onAdd(index),
                          child: Icon(Icons.add, color: whiteColorP)
                              .box
                              .roundedFull
                              .color(brownColor)
                              .make(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
                .box
                .padding(EdgeInsets.all(12))
                .roundedSM
                .margin(EdgeInsets.only(top: 10))
                .color(whiteColorP)
                .make();
          }).toList(),
        ),
      ],
    )
        .box
        .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 15))
        .withDecoration(
          BoxDecoration(
            border: Border(top: BorderSide(color: brownColor, width: 0.5)),
          ),
        )
        .make();
  }
}

