import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const AworCoffeeApp());
}

class AworCoffeeApp extends StatelessWidget {
  const AworCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
      ),
      home: SplashScreen(),
    );
  }
}
