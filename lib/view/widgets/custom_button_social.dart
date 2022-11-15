import 'package:demo/constance.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  CustomButtonSocial({
    required this.text,
    required this.imageName,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child:  Column(
        children: [
          Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
           child: InkWell(child: CustomText(
            alignment: Alignment.center,
            text: text,
            color: Colors.white,
          ),
          onTap: onPress,),
          color: primaryColor,),
              Row(
              children: [
                Image.asset(imageName),
                SizedBox(
                  width: 100,
                ),
                CustomText(
                  text: text,
                ),
              ],
            ),
        ],
      )
      );
  }
}
