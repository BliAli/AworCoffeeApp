import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/exchange_poin_screen/exchange_poin_screen.dart';
import 'package:awor_coffee/views/news_screen/news_screen.dart';
import 'package:awor_coffee/views/notif_screen/notif_screen.dart';
import 'package:awor_coffee/views/widget_common/our_button.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    height: 370,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    itemCount: promoSlider.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                            promoSlider[index],
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ).box.rounded
                          .clip(Clip.antiAlias)
                          .margin(
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          )
                          .make();
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        hiDear.text
                            .color(blackColor)
                            .fontFamily(bold)
                            .size(20)
                            .make(),
                        Row(
                          children: [
                            Image.asset(icLogoAwor2, width: 26),
                            10.widthBox,
                            poin.text
                                .color(blackColor)
                                .fontFamily(bold)
                                .size(20)
                                .make()
                                .box
                                .color(greyColor)
                                .rounded
                                .padding(EdgeInsets.all(8))
                                .border(color: blackColor)
                                .make(),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          tukarPoin.text
                              .color(brownColor)
                              .fontFamily(bold)
                              .size(16)
                              .make(),
                          Icon(
                            Icons.chevron_right,
                            color: brownColor,
                            size: 30,
                          ),
                        ],
                      ).box
                      .color(lightWhite)
                      .roundedSM
                      .padding(
                        EdgeInsets.symmetric(horizontal: 14, vertical: 3),
                      )
                      .margin(EdgeInsets.symmetric(horizontal: 10))
                      .make()
                      .onTap(() => Get.to(() => ExchangePoinScreen())),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child:
                                        pickUp.text
                                            .fontFamily(bold)
                                            .size(22)
                                            .color(whiteColorP)
                                            .make(),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        Image.asset(
                                          icPickUp,
                                        ).box.width(60).height(60).make(),
                                  ),
                                ],
                              ).box
                              .size(180, 120)
                              .color(lightBrownColor)
                              .rounded
                              .padding(EdgeInsets.all(14))
                              .make(),
                          Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child:
                                        delivery.text
                                            .fontFamily(bold)
                                            .size(22)
                                            .color(brownColor)
                                            .make(),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        Image.asset(
                                          icDelivery,
                                        ).box.width(85).height(60).make(),
                                  ),
                                ],
                              ).box
                              .size(180, 120)
                              .color(greyColor)
                              .rounded
                              .padding(EdgeInsets.all(14))
                              .make(),
                        ],
                      ).box
                      .margin(EdgeInsets.symmetric(horizontal: 8, vertical: 14))
                      .make(),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          aworNews.text
                              .color(blackColor)
                              .fontFamily(regular)
                              .size(22)
                              .make(),
                          Image.asset(icLogoAwor2, width: 20, height: 20),
                        ],
                      ).box
                      .margin(
                        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )
                      .make(),

                  VxSwiper.builder(
                    itemCount: newsSlider.length,
                    scrollDirection: Axis.horizontal,
                    height: 180,
                    itemBuilder: (context, index) {
                      return Image.asset(
                            newsSlider[index],
                            fit: BoxFit.cover,
                            width: double.nan,
                          ).box.rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()
                          .onTap(() {
                            Get.to(() => NewsScreen(newsImage: newsSlider[index], newsCaption: newsCaption[index],));
                          });
                    },
                  ),

                  Stack(
                    children: [
                      Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                    mesinRocket,
                                    width: 185,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ).box
                                  .leftRounded(value: 15)
                                  .clip(Clip.antiAlias)
                                  .make(),
                              Container(
                                width: 1,
                                height: 150,
                                color: greyColor,
                              ),
                              Image.asset(
                                    kakZulSmile,
                                    width: 185,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ).box
                                  .rightRounded(value: 15)
                                  .clip(Clip.antiAlias)
                                  .make(),
                            ],
                          ).box
                          .margin(
                            EdgeInsets.symmetric(horizontal: 2, vertical: 22),
                          )
                          .make(),

                      Positioned(
                        top: 65,
                        left: 17,
                        child:
                            kunjungAwor.text
                                .color(whiteColorP)
                                .fontFamily(bold)
                                .size(22)
                                .make(),
                      ),

                      Positioned(
                        top: 100,
                        left: 17,
                        child:
                            Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    cariOutlet.text
                                        .color(brownColor)
                                        .fontFamily(regular)
                                        .size(12)
                                        .make(),
                                    Image.asset(
                                          icLogoAwor2,
                                          width: 13,
                                          height: 13,
                                          fit: BoxFit.fill,
                                        ).box
                                        .margin(EdgeInsets.only(left: 4))
                                        .make(),
                                  ],
                                ).box
                                .color(lightGreyColor)
                                .rounded
                                .padding(
                                  EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                )
                                .make(),
                      ),
                    ],
                  ),

                  15.heightBox,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          butuhBantu.text
                              .fontFamily(regular)
                              .color(blackColor)
                              .size(22)
                              .make(),
                    ),
                  ),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.supervisor_account_rounded),
                          custService.text
                              .color(brownColor)
                              .size(18)
                              .fontFamily(regular)
                              .make(),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ).box.roundedSM
                      .color(lightWhite)
                      .margin(
                        EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                      )
                      .padding(
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      )
                      .make(),
                ],
              ),
            ),
          ),

          Positioned(
            top: 35,
            right: 10,
            child: InkWell(
              child:
                  Icon(Icons.notifications, color: brownColor).box.roundedFull
                      .color(lightWhite)
                      .padding(EdgeInsets.all(5))
                      .make(),
              onTap: () {
                Get.to(() => NotifScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
