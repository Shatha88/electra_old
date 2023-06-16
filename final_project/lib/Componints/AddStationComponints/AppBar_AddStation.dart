import 'package:final_project/extantions/push_andpop.dart';
import 'package:flutter/material.dart';

import '../../Screens/HomeScreen.dart';
import '../../conistans/colors.dart';
import '../../conistans/spaces.dart';

class AppBar_AddStation extends StatelessWidget {
  const AppBar_AddStation({
    super.key,
    required this.title,
    required this.icon,
    required this.page,
  });
  final String title;
  final IconData icon;
  final  page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              context.pushPage(page);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: kcolorsyallow,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: 30,
                color: kcolorsgerrn,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          klHSpace32,
        ],
      ),
    );
  }
}
