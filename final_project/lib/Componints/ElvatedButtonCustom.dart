
import 'package:final_project/conistans/colors.dart';
import 'package:final_project/extantions/push_andpop.dart';
import 'package:flutter/material.dart';

class ElvatedButtonCustom extends StatelessWidget {
  const ElvatedButtonCustom({
    super.key,
    required this.ButtonTitle,
    required this.page,
  });
  final String ButtonTitle;
  final page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 163,
      decoration: BoxDecoration(
        color: kcolorsgerrn,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () {
          context.pushPage(page);
        },
        style: ElevatedButton.styleFrom(
          primary: kcolorsgerrn,
        ),
        child: Text(
          ButtonTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
