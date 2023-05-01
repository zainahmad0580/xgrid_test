import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color buttonColor;
  final Color textColor;
  final double width;

  const RoundButton({
    super.key,
    required this.title,
    required this.onPress,
    required this.buttonColor,
    required this.textColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 50.sp,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: buttonColor),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: textColor, fontSize: 20.sp),
            ),
          ),
        ));
  }
}
