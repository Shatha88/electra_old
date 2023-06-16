import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:final_project/Componints/AddStationComponints/textCustom.dart';
import 'package:final_project/Componints/AddStationComponints/textFeldCustom.dart';
import 'package:final_project/conistans/colors.dart';
import 'package:final_project/conistans/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class addStationContainer extends StatefulWidget {
  const addStationContainer({
    super.key,
  });

  @override
  State<addStationContainer> createState() => _addStationContainerState();
}

class _addStationContainerState extends State<addStationContainer> {
  File? image;
  Future PickImage() async {
    try {
      final Image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image!.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (error) {
      print("Failed to pick image $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: kcolorsgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Add new station",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            kVSpace24,
            const Align(
              alignment: Alignment.bottomLeft,
              child: textCustom(
                titel: "Upload images of station : ",
              ),
            ),
            kVSpace16,
            InkWell(
              onTap: () => PickImage(),
              child: DottedBorder(
                color: Colors.grey, //color of dotted/dash line
                strokeWidth: 3, //thickness of dash/dots
                dashPattern: [10, 6],
                radius: Radius.circular(12),

                child: Container(
                  height: 100,
                  width: 250,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.cloud_upload_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                      const Text(
                        "Add Image",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            kVSpace16,
            const Align(
              alignment: Alignment.bottomLeft,
              child: textCustom(
                titel: "Bank Account : ",
              ),
            ),
            kVSpace16,
            const textfeldecustom(
              titel: "Bank Account",
              iconData: Icons.attach_money_rounded,
            ),
            kVSpace16,
            SizedBox(
              height: 50,
              width: 180,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kcolorsgerrn,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 25,
                        color: Colors.white,
                      ),
                      const Text(
                        "detect location",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
