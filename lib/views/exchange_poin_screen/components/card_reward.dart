import 'package:awor_coffee/consts/consts.dart';
import 'package:get/get.dart';

class CardReward extends StatefulWidget {
  const CardReward({
    super.key,
    this.icon,
    this.titleReward,
    this.expReward,
    this.poinReward,
    this.panduan,
  });

  final String? icon;
  final String? titleReward;
  final String? expReward;
  final String? poinReward;
  final String? panduan;

  @override
  State<CardReward> createState() => _CardRewardState();
}

class _CardRewardState extends State<CardReward> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(widget.icon!, width: 25, height: 25).box.roundedSM
                      .color(brownColor)
                      .padding(EdgeInsets.all(5))
                      .make(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      widget.titleReward!.text
                          .color(blackColor)
                          .fontFamily(bold)
                          .size(15)
                          .make(),
                      widget.expReward!.text
                          .color(greyCDateColor)
                          .fontFamily(regular)
                          .size(12)
                          .make(),
                    ],
                  ),
                  widget.poinReward!.text
                      .color(greyPoinColor)
                      .fontFamily(bold)
                      .size(16)
                      .make(),
                ],
              ),
              if (isExpanded) ...[
                Column(
                  children: [
                    Divider(color: greyColor),
                    widget.panduan!.text
                        .size(12)
                        .color(blackColor)
                        .fontFamily(regular)
                        .make(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: brownColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return UnconstrainedBox(
                              child:
                                  Column(
                                        children: [
                                          Column(
                                                children: [
                                                  yakinReedem.text
                                                      .fontFamily(bold)
                                                      .color(blackColor)
                                                      .make(),
                                                  "${widget.poinReward} ?".text
                                                      .fontFamily(bold)
                                                      .color(blackColor)
                                                      .make(),
                                                ],
                                              ).box
                                              .margin(
                                                EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                ),
                                              )
                                              .make(),
                                          Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                        widget.icon!,
                                                        width: 25,
                                                        height: 25,
                                                      ).box.roundedSM
                                                      .color(brownColor)
                                                      .padding(
                                                        EdgeInsets.all(5),
                                                      )
                                                      .margin(
                                                        EdgeInsets.only(
                                                          right: 20,
                                                        ),
                                                      )
                                                      .make(),
                                                  "${widget.titleReward}".text
                                                      .fontFamily(bold)
                                                      .make(),
                                                ],
                                              ).box.rounded
                                              .padding(EdgeInsets.all(7))
                                              .margin(
                                                EdgeInsets.symmetric(
                                                  vertical: 10,
                                                ),
                                              )
                                              .border(color: brownColor)
                                              .make(),
                                          poinTdkDptKembali.text
                                              .fontFamily(regular)
                                              .size(11)
                                              .make(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: whiteColorP,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          15,
                                                        ),
                                                    side: BorderSide(
                                                      color: brownColor,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child:
                                                    batalkan.text
                                                        .color(brownColor)
                                                        .size(10)
                                                        .make(),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: brownColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          15,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return UnconstrainedBox(
                                                        child:
                                                            Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    poinBerhasilDitukar.text.color(greyPoinColor).fontFamily(bold).size(15).make(),
                                                                    Icon(Icons.check, color: whiteColorP, weight: 30, size: 40,).box.padding(EdgeInsets.all(10)).margin(EdgeInsets.symmetric(vertical: 10)).roundedFull.color(brownColor).make()
                                                                  ],
                                                                ).box.rounded
                                                                .width(
                                                                  context.screenWidth *
                                                                      0.69,
                                                                )
                                                                .color(
                                                                  whiteColorP,
                                                                )
                                                                .padding(
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        15,
                                                                    vertical:
                                                                        15,
                                                                  ),
                                                                )
                                                                .make(),
                                                      );
                                                    },
                                                  );
                                                },
                                                child:
                                                    konfirmasi.text
                                                        .color(whiteColorP)
                                                        .size(10)
                                                        .make(),
                                              ),
                                            ],
                                          ).box.margin(EdgeInsets.only(top: 10)).make(),
                                        ],
                                      ).box.rounded
                                      .width(context.screenWidth * 0.69)
                                      .color(whiteColorP)
                                      .padding(
                                        EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 15,
                                        ),
                                      )
                                      .make(),
                            );
                          },
                        );
                      },
                      child:
                          tukarkan.text
                              .color(whiteColorS)
                              .fontFamily(regular)
                              .size(12)
                              .make(),
                    ).box.width(context.screenWidth).margin(EdgeInsets.symmetric(horizontal: 10, vertical: 5)).make(),
                  ],
                ),
              ],
            ],
          ),
        ).box
        .width(context.screenWidth)
        .rounded
        .border(color: brownColor)
        .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
        .margin(EdgeInsets.symmetric(vertical: 10))
        .make();
  }
}
