import 'package:awor_coffee/consts/consts.dart';

Widget ourButton({onPress, color, textColor, String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      )
    ),
    onPressed: onPress, 
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}