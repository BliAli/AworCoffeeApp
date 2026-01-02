import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/search_outlet_screen/detail_outlet.dart';
import 'package:get/get.dart';

class SearchOutlet extends StatefulWidget {
  const SearchOutlet({super.key});

  @override
  State<SearchOutlet> createState() => _SearchOutletState();
}

class _SearchOutletState extends State<SearchOutlet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
                    fontSize: 14,
                  ),
                  hintText: cariOutlet,
                  hintStyle: TextStyle(
                    fontFamily: regular,
                    color: greyPoinColor,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                ),
              ).box.rounded
              .border(color: brownColor)
              .padding(EdgeInsets.only(left: 15, right: 0))
              .margin(EdgeInsets.symmetric(horizontal: 20, vertical: 10))
              .make(),
          15.heightBox,
          outletDekat.text
              .color(brownColor)
              .fontFamily(regular)
              .size(18)
              .make(),
          15.heightBox,
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, index) {
                return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                              imagesOutlet[index],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ).box.roundedSM
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.only(right: 10))
                            .make(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              namaOutlet[index].text
                                  .color(brownColor)
                                  .fontFamily(regular)
                                  .size(14)
                                  .make(),
                              addressOutlet[index].text
                                  .color(darkGreyColor)
                                  .overflow(TextOverflow.visible)
                                  .size(12)
                                  .fontFamily(regular)
                                  .make(),
                            ],
                          ),
                        ),
                        distanceOutlet[index].text
                            .fontFamily(regular)
                            .size(12)
                            .color(darkGreyColor)
                            .make(),
                      ],
                    ).box
                    .border(color: brownColor, width: 0.5)
                    .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 15))
                    .margin(EdgeInsets.symmetric(vertical: 2))
                    .make()
                    .onTap(() {
                      Get.to(
                        () => DetailOutlet(imageOutlet: imagesOutlet[index], addresOutlet: addressOutlet[index], distanceOutlet: distanceOutlet[index], nameOutlet: namaOutlet[index], mapOutlet: mapOutlet[index],),
                      );
                    });
              },
              itemCount: imagesOutlet.length,
            ),
          ),
        ],
      ),
    );
  }
}
