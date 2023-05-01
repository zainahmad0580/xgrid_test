import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgrid_demo/utils/app_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CircleAvatar(
          radius: screenWidth * 0.17,
          backgroundColor: AppColors.orange,
          child: CircleAvatar(
            radius: screenWidth * 0.15,
            backgroundImage: const AssetImage('assets/images/user.png'),
          ),
        ),
        SizedBox(height: 10.h),
        const Text('John Doe',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Text(
          'john.doe@example.com',
          style: TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
