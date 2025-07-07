import 'package:awor_coffee/consts/consts.dart';

Widget cardNotif(BuildContext context, {String? image, String? description, String? date}) {
  return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Image.asset(image!, fit: BoxFit.cover),
              ),
              15.widthBox,
              Expanded(
                child:
                    description!
                        .text
                        .overflow(TextOverflow.visible)
                        .fontFamily(regular)
                        .size(12)
                        .make(),
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomRight,
            child:
                date!.text
                    .color(lightGreyColor)
                    .fontFamily(regular)
                    .size(12)
                    .make(),
          ),
        ],
      ).box
      .color(whiteColorP)
      .width(context.screenWidth)
      .roundedSM
      .margin(EdgeInsets.symmetric(horizontal: 15, vertical: 5))
      .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 10))
      .make();
}
