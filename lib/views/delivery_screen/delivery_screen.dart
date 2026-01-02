import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/widget_common/category_menu.dart';
import 'package:awor_coffee/views/widget_common/recommended_section.dart';
import 'package:awor_coffee/views/search_outlet_screen/search_outlet.dart';
import 'package:awor_coffee/views/widget_common/bg_widget.dart';
import 'package:awor_coffee/views/widget_common/grid_menu.dart';
import 'package:get/get.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  int selectedIndexMenuList = -1;
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: context.screenHeight * 0.85,
          child: bgWidget(imageBg: bgDelivery),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                Image.asset(
                  icDelivery,
                  width: 70,
                  height: 60,
                  color: whiteColorP,
                ),
                10.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    delivery.text
                        .fontFamily(semibold)
                        .size(18)
                        .color(whiteColorP)
                        .make(),
                    langsungDiantar.text
                        .fontFamily(regular)
                        .size(12)
                        .color(whiteColorP)
                        .make(),
                  ],
                ),
              ],
            ),
            actions: [
              Image.asset(
                icLogoAwor2,
                width: 30,
                height: 30,
              ).box.padding(EdgeInsets.symmetric(horizontal: 20)).make(),
            ],
          ),
          body: Container(
            color: whiteColorP,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            color: brownColor,
                            size: 28,
                          ),
                          labelStyle: TextStyle(
                            fontFamily: regular,
                            color: brownColor,
                            fontSize: 15,
                          ),
                          hintText: cariProduk,
                          hintStyle: TextStyle(
                            fontFamily: regular,
                            color: greyPoinColor,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                      ).box.rounded
                      .color(whiteColorP)
                      .padding(EdgeInsets.only(left: 20))
                      .border(color: brownColor)
                      .width(context.screenWidth * 0.87)
                      .margin(
                        EdgeInsets.only(
                          left: 25,
                          right: 25,
                          top: 10,
                          bottom: 15,
                        ),
                      )
                      .make(),
                  //Dari Outlet
                  Row(
                        children: [
                          Image.asset(icStore, width: 25, height: 25)
                              .box
                              .roundedFull
                              .color(brownColor)
                              .padding(EdgeInsets.all(8))
                              .make(),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    aworGallery.text
                                        .fontFamily(regular)
                                        .color(greyPoinColor)
                                        .size(14)
                                        .make(),
                                    Row(
                                      children: [
                                        distanceGallery.text
                                            .fontFamily(regular)
                                            .color(greyPoinColor)
                                            .size(13)
                                            .make(),
                                        terdekat.text
                                            .color(Vx.blue500)
                                            .fontFamily(semibold)
                                            .size(13)
                                            .make()
                                            .box
                                            .margin(EdgeInsets.only(left: 3))
                                            .make(),
                                      ],
                                    ),
                                  ],
                                ).box.margin(EdgeInsets.only(left: 20)).make(),
                                Icon(
                                  Icons.chevron_right,
                                  color: brownColor,
                                  size: 30,
                                ).onTap(() {
                                  Get.to(() => SearchOutlet());
                                }),
                              ],
                            ),
                          ),
                        ],
                      ).box.roundedSM
                      .color(cardPickUpColor)
                      .border(color: greyColor)
                      .width(context.screenWidth * 0.87)
                      .margin(EdgeInsets.symmetric(horizontal: 25, vertical: 5))
                      .padding(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      )
                      .make(),
                  // Menuju alamat customer
                  Row(
                        children: [
                          Icon(
                                Icons.location_on_rounded,
                                color: whiteColorP,
                                size: 25,
                              ).box.roundedFull
                              .color(brownLocation)
                              .padding(const EdgeInsets.all(8))
                              .make(),
                          10.widthBox,
                          // teks alamat dibatasi Expanded
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titleAlamatDelivery.text
                                    .fontFamily(regular)
                                    .color(greyPoinColor)
                                    .size(14)
                                    .maxLines(1)
                                    .overflow(TextOverflow.ellipsis)
                                    .make(),
                                detailAlamatDelivery.text
                                    .fontFamily(regular)
                                    .color(greyPoinColor)
                                    .size(13)
                                    .maxLines(2)
                                    .overflow(TextOverflow.ellipsis)
                                    .make(),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: brownColor,
                            size: 30,
                          ).onTap(() {
                            Get.to(() => SearchOutlet());
                          }),
                        ],
                      ).box.roundedSM
                      .color(cardPickUpColor)
                      .border(color: greyColor)
                      .width(context.screenWidth * 0.87)
                      .margin(const EdgeInsets.symmetric(horizontal: 25))
                      .padding(
                        const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      )
                      .make(),

                  CategoryMenu(
                    menuList: menuList,
                    selectedIndex: selectedIndexMenuList,
                    onTap: (index) {
                      setState(() {
                        selectedIndexMenuList = index;
                      });
                    },
                  ),

                  //Menu Recommended List
                  RecommendedSection(
                    pic: menuPicRecomList,
                    name: menuNameRecomList,
                    des: menuDesRecomList,
                    price: menuPriceRecomList,
                  ),

                  //Menu Sparkly
                  gridMenu(
                    menuType: aworSparkly,
                    menuPic: menuPicSparkly,
                    menuName: menuNameSparkly,
                    menuDesc: menuDesSparkly,
                    menuPrice: menuPriceSparkly,
                  ),
                  //Menu Signature
                  gridMenu(
                    menuType: signatures,
                    menuPic: menuPicSignature,
                    menuName: menuNameSignature,
                    menuDesc: menuDesSignature,
                    menuPrice: menuPriceSignature,
                  ),
                  //Menu Es Kopi Susu
                  gridMenu(
                    menuType: esKopiSusu,
                    menuPic: menuPicEsKopiSusu,
                    menuName: menuNameEsKopiSusu,
                    menuDesc: menuDesEsKopiSusu,
                    menuPrice: menuPriceEsKopiSusu,
                  ),
                  //Menu Cold Brew
                  gridMenu(
                    menuType: coldBrew,
                    menuPic: menuPicColdBrew,
                    menuName: menuNameColdBrew,
                    menuDesc: menuDesColdBrew,
                    menuPrice: menuPriceColdBrew,
                  ),
                  //Menu Pastires
                  gridMenu(
                    menuType: pastries,
                    menuPic: menuPicPastries,
                    menuName: menuNamePastries,
                    menuDesc: menuDesPastries,
                    menuPrice: menuPricePastries,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
