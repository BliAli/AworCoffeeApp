import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/widget_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColorP,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            applogoWidget(),
            10.heightBox,
            coffee.text.fontFamily(semibold).size(18).make(),
          ],
        ),
      ),
    );
  }
}