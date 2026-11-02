import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/models/order_item.dart';
import 'package:awor_coffee/views/checkout_screen/checkout_screen.dart';
import 'package:awor_coffee/views/widget_common/cup_size_selector.dart';
import 'package:awor_coffee/views/widget_common/espresso_selector.dart';
import 'package:awor_coffee/views/widget_common/ice_level_selector.dart';
import 'package:awor_coffee/views/widget_common/our_button.dart';
import 'package:awor_coffee/views/widget_common/sweetness_selector.dart';
import 'package:get/get.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({
    super.key,
    this.menuPic,
    this.menuName,
    this.menuDes,
    this.menuPrice,
    this.menuType,
  });
  final String? menuPic;
  final String? menuName;
  final String? menuDes;
  final String? menuPrice;
  final String? menuType;

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  CupSize selectedSize = CupSize.regular;
  AddEspresso? selectedEspresso;
  IceLevel selectedIce = IceLevel.normal;
  SweetLevel selectedSweet = SweetLevel.normal;

  int jumlahItem = 0;

  //Harga asli product
  int basePrice = 0;

  //Harga tambahan
  int sizePrice = 0;
  int espressoPrice = 0;
  int icePrice = 0;
  int sweetPrice = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Harga product yang dari string jadi int
    basePrice = int.parse(widget.menuPrice!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.menuPic!),
              Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.menuName!.text
                          .fontFamily(semibold)
                          .size(16)
                          .color(blackColor)
                          .make(),
                      10.heightBox,
                      widget.menuDes!.text
                          .fontFamily(regular)
                          .color(blackColor)
                          .make(),
                      10.heightBox,
                      "Rp ${widget.menuPrice!}".text
                          .fontFamily(semibold)
                          .size(16)
                          .color(blackColor)
                          .make(),
                    ],
                  ).box
                  .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
                  .withDecoration(
                    BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: brownColor, width: 1),
                        top: BorderSide(color: brownColor, width: 1),
                      ),
                    ),
                  )
                  .width(context.screenWidth)
                  .make(),

              if (showSize)
                CupSizeSelector(
                  selectedSize: selectedSize,
                  onChanged: (value) {
                    setState(() {
                      selectedSize = value;
                      sizePrice = getSizePrice(value);
                    });
                  },
                ),

              if (showEspresso)
                EspressoSelector(
                  selectedEspresso: selectedEspresso,
                  onChanged: (value) {
                    setState(() {
                      if (selectedEspresso == value) {
                        selectedEspresso = null;
                        espressoPrice = 0;
                      } else {
                        selectedEspresso = value;
                        espressoPrice = getEspressoPrice(value!);
                      }
                    });
                  },
                ),

              if (showIce)
                IceLevelSelector(
                  selectedIce: selectedIce,
                  onChanged: (value) {
                    setState(() {
                      selectedIce = value;
                      icePrice = getIcePrice(value);
                    });
                  },
                ),

              if (showSweetness)
                SweetnessSelector(
                  selectedSweetness: selectedSweet,
                  onChanged: (value) {
                    setState(() {
                      selectedSweet = value;
                    });
                  },
                ),

              Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          catatan.text
                              .size(16)
                              .color(blackColor)
                              .fontFamily(semibold)
                              .make(),
                          opsional.text
                              .color(greyColor)
                              .fontFamily(semibold)
                              .make(),
                        ],
                      ),
                      TextFormField(
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                fontFamily: regular,
                                color: greyColor,
                                fontSize: 18,
                              ),
                              hintText: tambahCatatan,
                              hintStyle: TextStyle(
                                fontFamily: extralight,
                                color: blackColor,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                          ).box.rounded
                          .border(color: blackColor)
                          .padding(EdgeInsets.symmetric(horizontal: 20))
                          .margin(EdgeInsets.symmetric(vertical: 15))
                          .make(),
                    ],
                  ).box
                  .padding(EdgeInsets.symmetric(horizontal: 15, vertical: 10))
                  .margin(EdgeInsets.only(top: 10))
                  .withDecoration(
                    BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: brownColor, width: 1),
                        top: BorderSide(color: brownColor, width: 1),
                      ),
                    ),
                  )
                  .width(context.screenWidth)
                  .make(),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
          Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Jumlah Item ".text
                          .size(15)
                          .color(brownColor)
                          .fontFamily(semibold)
                          .make(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (jumlahItem > 0) {
                                    jumlahItem--;
                                  }
                                });
                              },
                              child:
                                  Icon(Icons.remove, color: whiteColorP)
                                      .box
                                      .roundedFull
                                      .color(brownColor)
                                      .margin(EdgeInsets.only(right: 20))
                                      .make(),
                            ),
                            "$jumlahItem".text
                                .color(brownColor)
                                .fontFamily(semibold)
                                .make(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  jumlahItem++;
                                });
                              },
                              child:
                                  Icon(Icons.add, color: whiteColorP)
                                      .box
                                      .roundedFull
                                      .color(brownColor)
                                      .margin(EdgeInsets.only(left: 20))
                                      .make(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ourButton(
                    title: "Tambahkan Pesanan - Rp${getTotalPrice()}",
                    textColor: whiteColorP,
                    color: brownColor,
                    onPress: addToOrder,
                  ).box.width(context.screenWidth).make(),
                ],
              ).box
              .padding(EdgeInsets.fromLTRB(20, 10, 20, 17))
              .height(context.screenHeight * 0.13)
              .color(whiteColorP)
              .topRounded(value: 16)
              .shadow
              .make(),
    );
  }

  int getSizePrice(CupSize size) {
    switch (size) {
      case CupSize.regular:
        return 0;
      case CupSize.large:
        return 5000;
    }
  }

  int getEspressoPrice(AddEspresso espresso) {
    switch (espresso) {
      case AddEspresso.singleShot:
        return 9000;
      case AddEspresso.doubleShot:
        return 13000;
    }
  }

  int getIcePrice(IceLevel ice) => ice == IceLevel.separate ? 5000 : 0;

  int getUnitPrice() =>
      basePrice + sizePrice + espressoPrice + icePrice + sweetPrice;

  int getTotalPrice() => getUnitPrice() * jumlahItem;

  bool get showSize =>
      widget.menuType == signatures ||
      widget.menuType == esKopiSusu ||
      widget.menuType == nonCoffee;
  bool get showEspresso =>
      widget.menuType == signatures || widget.menuType == esKopiSusu;
  bool get showIce =>
      widget.menuType == aworSparkly ||
      widget.menuType == signatures ||
      widget.menuType == esKopiSusu ||
      widget.menuType == coldBrew ||
      widget.menuType == nonCoffee;
  bool get showSweetness =>
      widget.menuType == signatures ||
      widget.menuType == esKopiSusu ||
      widget.menuType == nonCoffee;

  void addToOrder() {
    if (jumlahItem == 0) return;

    final orderItem = OrderItem(
      name: widget.menuName!,
      pict: widget.menuPic!,
      size: selectedSize.name,
      ice: selectedIce.name,
      sugar: selectedSweet.name,
      quantity: jumlahItem,
      unitPrice: getUnitPrice(),
    );
    Get.to(() => CheckoutScreen(orderItems: [orderItem]));
  }
}
