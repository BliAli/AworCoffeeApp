import 'package:awor_coffee/consts/consts.dart';

Widget userTextField({String? title, String? dataUser, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(greyCDateColor).fontFamily(regular).size(12).make(),
      TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          hintText: dataUser!,
          hintStyle: TextStyle(fontFamily: semibold),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: blackColor),
          ),
        ),
        showCursor: false,
      ),
    ],
  ).box.margin(EdgeInsets.symmetric(vertical: 10)).make();
}
