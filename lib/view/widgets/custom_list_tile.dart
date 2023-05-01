import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Icon leading;
  final Icon trailing;

  const CustomListTile({
    super.key,
    required this.title,
    required this.onPress,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: leading,
      trailing: trailing,
      title: Text(
        title,
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}
