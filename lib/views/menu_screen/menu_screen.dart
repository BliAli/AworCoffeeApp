import 'package:awor_coffee/consts/consts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: "Menu Page".text.color(darkGreyColor).makeCentered()
    );
  }
}