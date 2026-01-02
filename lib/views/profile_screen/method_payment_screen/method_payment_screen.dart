import 'package:awor_coffee/consts/consts.dart';

class MethodPaymentScreen extends StatelessWidget {
  const MethodPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: metodePembayaran.text.fontFamily(semibold).make(),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pembayaranTerpilih.text
                        .fontFamily(semibold)
                        .size(18)
                        .make(),
                    20.heightBox,
                    Row(
                      children: [
                        Image.asset(iconQris, height: 50, width: 50),
                        10.widthBox,
                        qris.text.fontFamily(semibold).size(16).make(),
                      ],
                    ),
                  ],
                ).box
                .width(context.screenWidth)
                .border(color: blackColor, width: 0.5)
                .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 20))
                .margin(EdgeInsets.symmetric(vertical: 15))
                .make(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child:
                  metodePembayaranLain.text
                      .fontFamily(semibold)
                      .size(18)
                      .make(),
            ),

            Expanded(
              child:
                  ListView.builder(
                        itemCount: payMethodList.length,
                        itemBuilder: (context, index) {
                          return Row(
                                children: [
                                  Image.asset(
                                    payMethodIconList[index],
                                    width: 50,
                                    height: 50,
                                  ),
                                  10.widthBox,
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            payMethodList[index].text
                                                .fontFamily(regular)
                                                .size(16)
                                                .make(),
                                            aktifSekarang.text
                                                .fontFamily(regular)
                                                .color(greyColor)
                                                .make(),
                                          ],
                                        ),
                                        Icon(Icons.arrow_forward_ios_sharp, color: brownColor, size: 20,)
                                      ],
                                    ),
                                  ),

                                ],
                              ).box
                              .margin(EdgeInsets.symmetric(vertical: 5))
                              .withDecoration(
                                BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: blackColor,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                              ).padding(EdgeInsets.fromLTRB(10, 0, 10, 5))
                              .make();
                        },
                      ).box
                      .margin(EdgeInsets.symmetric(vertical: 10))
                      .padding(EdgeInsets.symmetric(horizontal: 15))
                      .make(),
            ),
          ],
        ),
      ),
    );
  }
}
