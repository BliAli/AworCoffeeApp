import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: "Notification".text.makeCentered(),
      ),
    );
  }
}
