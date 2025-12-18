import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/widget_common/category_menu.dart';
import 'package:awor_coffee/views/pickup_screen/menu_detail.dart';
import 'package:awor_coffee/views/widget_common/recommended_section.dart';
import 'package:awor_coffee/views/search_outlet_screen/search_outlet.dart';
import 'package:awor_coffee/views/widget_common/bg_widget.dart';
import 'package:awor_coffee/views/widget_common/grid_menu.dart';
import 'package:get/get.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({super.key});

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
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
          child: bgWidget(),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                Image.asset(icPickUp2, width: 40, height: 50),
                10.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pickUp.text
                        .fontFamily(semibold)
                        .size(18)
                        .color(blackColor)
                        .make(),
                    ambilDiOutlet.text
                        .fontFamily(regular)
                        .size(12)
                        .color(blackColor)
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
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      )
                      .make(),
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
                                        .size(13)
                                        .make(),
                                    distanceGallery.text
                                        .fontFamily(regular)
                                        .color(greyPoinColor)
                                        .size(13)
                                        .make(),
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
                      .margin(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      )
                      .padding(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
