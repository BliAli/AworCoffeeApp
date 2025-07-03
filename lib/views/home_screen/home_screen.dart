import 'package:awor_coffee/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: "Home Page".text.color(darkGreyColor).makeCentered()
    );
  }
}