import 'package:final_project/Componints/ElvatedButtonCustom.dart';
import 'package:final_project/Screens/AddStation.dart';
import 'package:final_project/conistans/colors.dart';
import 'package:final_project/conistans/spaces.dart';
import 'package:final_project/extantions/push_andpop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                kVSpace8,
                Text(
                  "Provider Name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                kVSpace64,
                kVSpace64,
               const Icon(
                  LineIcons.chargingStation,
                  size: 250,
                  color: Colors.grey,
                ),
               const Text(
                  "You don't have \n     a staion",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                kVSpace64,
                kVSpace64,
                const ElvatedButtonCustom(
                  ButtonTitle: "Add Station",
                  page: AddStation(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
