import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_demo/provider/dark_theme_provider.dart';
import 'package:xgrid_demo/utils/app_colors.dart';
import 'package:xgrid_demo/view/widgets/custom_list_tile.dart';
import 'package:xgrid_demo/view/widgets/my_bottom_sheet.dart';
import 'package:xgrid_demo/view/widgets/round_button.dart';
import 'package:xgrid_demo/view/widgets/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final ValueNotifier<bool> _darkMode = ValueNotifier(false);

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ValueListenableBuilder(
                    valueListenable: _darkMode,
                    builder: (context, value, child) {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {
                              _darkMode.value = !_darkMode.value;
                              themeChange.darkTheme
                                  ? themeChange.darkTheme = false
                                  : themeChange.darkTheme = true;
                            },
                            icon: value
                                ? const Icon(Icons.dark_mode_outlined)
                                : const Icon(Icons.dark_mode)),
                      );
                    }),
                SizedBox(height: 10.h),
                const UserInfo(),
                SizedBox(height: 10.h),
                RoundButton(
                    title: 'Upgrade to PRO',
                    onPress: () {},
                    buttonColor: AppColors.orange,
                    textColor: themeChange.darkTheme
                        ? AppColors.white
                        : AppColors.black,
                    width: screenWidth * 0.5),
                SizedBox(height: 10.h),
                CustomListTile(
                    title: 'Privacy',
                    onPress: () {},
                    leading: const Icon(Icons.privacy_tip_outlined),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                SizedBox(height: 10.h),
                CustomListTile(
                    title: 'Purchase History',
                    onPress: () {},
                    leading: const Icon(Icons.history),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                SizedBox(height: 10.h),
                CustomListTile(
                    title: 'Help & Support',
                    onPress: () {},
                    leading: const Icon(Icons.help_outline),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                SizedBox(height: 10.h),
                CustomListTile(
                    title: 'Settings',
                    onPress: () {},
                    leading: const Icon(Icons.settings),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                SizedBox(height: 10.h),
                CustomListTile(
                    title: 'Invite a friend',
                    onPress: () {},
                    leading: const Icon(Icons.person_add),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                SizedBox(height: 10.h),
                RoundButton(
                    title: 'Logout',
                    onPress: () {},
                    buttonColor: themeChange.darkTheme
                        ? AppColors.orange
                        : AppColors.black,
                    textColor: AppColors.white,
                    width: screenWidth),
                SizedBox(height: 50.h),
                MyBottomSheet(width: screenWidth)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
