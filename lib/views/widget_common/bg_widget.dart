import 'package:awor_coffee/consts/consts.dart';

Widget bgWidget({Widget? child, String? imageBg}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imageBg!), fit: BoxFit.cover),
    ),
    child: child,
  );
}
