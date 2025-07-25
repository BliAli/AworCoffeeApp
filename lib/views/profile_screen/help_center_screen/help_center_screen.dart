import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/profile_screen/help_center_screen/card_question.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: pusatBantu.text.fontFamily(semibold).make()),
      body: Expanded(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CardQuestion(question: pertanyaan1, answer: jawaban1,),
              CardQuestion(question: pertanyaan2, answer: jawaban2,),
              CardQuestion(question: pertanyaan3, answer: jawaban3,),
            ],
          ),
        ),
      ),
    );
  }
}
