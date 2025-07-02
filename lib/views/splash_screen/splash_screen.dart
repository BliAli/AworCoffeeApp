import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/auth_screen/login_screen.dart';
import 'package:awor_coffee/views/widget_common/applogo1_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColorP,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            applogo1Widget(),
            10.heightBox,
            coffee.text.fontFamily(semibold).size(18).make(),
          ],
        ),
      ),
    );
  }
}
