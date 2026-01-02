import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

class DetailOutlet extends StatefulWidget {
  const DetailOutlet({
    super.key,
    this.imageOutlet,
    this.addresOutlet,
    this.distanceOutlet,
    this.nameOutlet,
    this.mapOutlet,
  });
  final String? imageOutlet;
  final String? nameOutlet;
  final String? addresOutlet;
  final String? distanceOutlet;
  final String? mapOutlet;

  @override
  State<DetailOutlet> createState() => _DetailOutletState();
}

class _DetailOutletState extends State<DetailOutlet> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              (widget.imageOutlet)!,
              height: context.screenHeight * 0.4,
              width: context.screenWidth,
              fit: BoxFit.cover,
            ),
            Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.nameOutlet!.text
                            .size(18)
                            .color(brownColor)
                            .fontFamily(bold)
                            .make(),
                        widget.distanceOutlet!.text
                            .size(14)
                            .color(lightBlue)
                            .fontFamily(regular)
                            .make(),
                      ],
                    ),

                    10.heightBox,
                    widget.addresOutlet!.text
                        .fontFamily(regular)
                        .size(12)
                        .color(greyPoinColor)
                        .make(),

                    ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: brownColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child:
                              pilihOutlet.text
                                  .color(whiteColorP)
                                  .size(14)
                                  .fontFamily(bold)
                                  .make(),
                        ).box
                        .width(context.screenWidth)
                        .margin(EdgeInsets.symmetric(vertical: 10))
                        .make(),

                    Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: greyPoinColor,
                                    ),
                                    5.widthBox,
                                    cekMap.text
                                        .color(greyPoinColor)
                                        .fontFamily(regular)
                                        .size(14)
                                        .make(),
                                  ],
                                ),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isExpanded = !isExpanded;
                                    });
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: greyPoinColor,
                                  ),
                                ),
                              ],
                            ),
                            if (isExpanded) ...[
                              10.heightBox,
                              Image.asset(widget.mapOutlet!).box
                                  .margin(EdgeInsets.symmetric(horizontal: 10))
                                  .border(color: brownColor)
                                  .make(),
                            ],
                          ],
                        ).box
                        .color(whiteColorP)
                        .padding(
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        )
                        .roundedSM
                        .make(),
                  ],
                ).box
                .margin(EdgeInsets.symmetric(horizontal: 15, vertical: 15))
                .make(),
          ],
        ),
      ),
    );
  }
}
