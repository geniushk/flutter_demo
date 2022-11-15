import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  CustomButton({
    required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.all(10),
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
       child: InkWell(child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
      onTap: onPress,),
      color: primaryColor,
      
    );
  }
}
