import 'package:dotted_border/dotted_border.dart';
import 'package:final_project/Componints/AddStationComponints/addStationContaner.dart';

import 'package:final_project/Screens/HomeScreen.dart';
import 'package:final_project/Screens/RequestStatus.dart';
import 'package:final_project/conistans/colors.dart';
import 'package:final_project/conistans/spaces.dart';
import 'package:final_project/extantions/push_andpop.dart';
import 'package:flutter/material.dart';

import '../Componints/AddStationComponints/AppBar_AddStation.dart';

class AddStation extends StatelessWidget {
  const AddStation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const AppBar_AddStation(
                title: "Add Station",
                icon: Icons.close,
                page: HomeScreen(),
              ),
              kVSpace64,
              addStationContainer(),
              kVSpace64,
              Container(
                height: 44,
                width: 163,
                decoration: BoxDecoration(
                  color: kcolorsgerrn,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.pushPage(RequestStatus());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kcolorsgerrn,
                  ),
                  child: Text(
                    "Add Station",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
