import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/pickup_screen/menu_detail.dart';
import 'package:get/get.dart';

Widget gridMenu({
  String? menuType,
  List<String>? menuPic,
  List<String>? menuName,
  List<String>? menuDesc,
  List<String>? menuPrice,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        child:
            menuType!.text
                .fontFamily(semibold)
                .color(blackColor)
                .size(15)
                .make(),
      ).box.margin(EdgeInsets.only(left: 20, top: 10)).make(),
      GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: menuName!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 3,
          mainAxisExtent: 220,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                menuPic![index],
                height: 150,
                width: (context.screenWidth * 0.45),
                fit: BoxFit.cover,
              ).box.roundedSM.clip(Clip.antiAlias).make(),
              Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      menuName[index].text
                          .color(greyPoinColor)
                          .fontFamily(semibold)
                          .size(14)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                      menuDesc![index].text
                          .color(greyPoinColor)
                          .fontFamily(regular)
                          .size(12)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                      "Rp ${menuPrice![index]}".text
                          .color(greyPoinColor)
                          .fontFamily(semibold)
                          .size(12)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                    ],
                  ).box.roundedSM
                  .width(context.screenWidth * 0.45)
                  .padding(EdgeInsets.symmetric(horizontal: 7, vertical: 5))
                  .color(whiteColorP)
                  .make(),
            ],
          ).onTap(() {
            Get.to(() => MenuDetail(menuPic: menuPic[index], menuName: menuName[index], menuDes: menuDesc[index], menuPrice: menuPrice[index], menuType: menuType,));
          });
        },
      ).box.margin(EdgeInsets.symmetric(horizontal: 15, vertical: 10)).make(),
    ],
  );
}
