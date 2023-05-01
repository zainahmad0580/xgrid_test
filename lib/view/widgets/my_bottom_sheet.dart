import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_demo/provider/dark_theme_provider.dart';
import 'package:xgrid_demo/utils/app_colors.dart';
import 'package:xgrid_demo/utils/shared_prefs.dart';

class MyBottomSheet extends StatelessWidget {
  final double width;

  const MyBottomSheet({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return InkWell(
        onTap: () {
          showBottomSheet(
              context: context,
              builder: ((context) {
                return const SizedBox.shrink();
              }));
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 10.sp,
          width: width * 0.5,
          decoration: BoxDecoration(
              color: themeChange.darkTheme ? AppColors.white : AppColors.black,
              borderRadius: BorderRadius.circular(40.0)),
        ));
  }
}
