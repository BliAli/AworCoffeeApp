import 'package:awor_coffee/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(bgPickupNoEdit), fit: BoxFit.cover),
    ),
    child: child,
  );
}
