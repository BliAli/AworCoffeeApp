import 'package:awor_coffee/consts/consts.dart';

class CardAddress extends StatefulWidget {
  const CardAddress({super.key, this.headerAddress, this.bodyAddress, this.mapAddress});

  final String? headerAddress;
  final String? bodyAddress;
  final String? mapAddress;

  @override
  State<CardAddress> createState() => _CardAddressState();
}

class _CardAddressState extends State<CardAddress> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child:
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget.headerAddress!.text
                      .fontFamily(semibold)
                      .color(greyPoinColor)
                      .size(14)
                      .make(),
                  10.heightBox,
                  widget.bodyAddress!.text
                      .fontFamily(regular)
                      .color(greyPoinColor)
                      .size(12)
                      .make(),
                  10.heightBox,
                  if (isExpanded) ...[
                    Column(
                      children: [
                        Image.asset(
                          widget.mapAddress!,
                        ).box.topRounded().shadowMd.make(),
                        Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: whiteColorP,
                                  size: 20,
                                ),
                                5.widthBox,
                                detailAlamat.text
                                    .fontFamily(regular)
                                    .size(10)
                                    .color(whiteColorS)
                                    .make(),
                              ],
                            ).box
                            .bottomRounded()
                            .color(brownColor)
                            .padding(
                              EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                            )
                            .shadowSm
                            .make(),
                      ],
                    ),
                  ],
                ],
              ).box.rounded
              .color(whiteColorP)
              .margin(EdgeInsets.symmetric(horizontal: 10, vertical: 10))
              .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 15))
              .make(),
    );
  }
}
