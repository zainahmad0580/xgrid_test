import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgrid_demo/provider/dark_theme_provider.dart';
import 'package:xgrid_demo/utils/route/route_names.dart';
import 'package:xgrid_demo/utils/route/routes.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_demo/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => themeChangeProvider)
              ],
              child: Consumer<DarkThemeProvider>(
                builder: ((context, value, child) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Xgrid Demo',
                    theme: Styles.themeData(
                        themeChangeProvider.darkTheme, context),
                    initialRoute: RouteNames.home,
                    onGenerateRoute: Routes.generateRoute,
                  );
                }),
              ));
        });
  }
}
