import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/think.gif"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              SizedBox(height: MediaQuery.of(context).size.height / 2.2),
              CustomText(text: "Press     "),
              CustomText(text: "to       "),
              CustomText(text: "Start     "),
              CustomText(text: "Our       "),
              CustomText(text: "Quiz :)     "),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String text;
  double size;
  CustomText({required this.text, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: size,
          fontFamily: 'IslandMoments'),
    );
  }
}
