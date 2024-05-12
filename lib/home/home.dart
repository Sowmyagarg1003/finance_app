import 'package:finance_app/home/widgets/history.dart';
import 'package:finance_app/home/widgets/info_container.dart';
import 'package:finance_app/home/widgets/quick_send.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f0f0f),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const InfoContainer(),
                const SizedBox(
                  height: 32,
                ),
                QuickSend(),
                History(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
