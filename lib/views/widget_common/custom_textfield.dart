import 'package:awor_coffee/consts/consts.dart';

Widget customTextField({String? hint, String? title, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      15.heightBox,
      title!.text.color(blackColor).fontFamily(regular).size(18).make(),
      TextFormField(
        controller: controller,
        style: TextStyle(
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: blackColor,
          ),
          hintText: hint,
          isDense: false,
          fillColor: lightGreyColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10)
          
        ),
      ),
    ],
  );
}
