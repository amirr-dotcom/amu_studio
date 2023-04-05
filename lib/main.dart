import 'package:amu_studios_website/app_manager/constant/project_constant.dart';
import 'package:amu_studios_website/app_manager/theme/app_color.dart';
import 'package:amu_studios_website/route_name.dart';
import 'package:amu_studios_website/view/home_page/hom_page_view.dart';
import 'package:amu_studios_website/view/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_generator/material_color_generator.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return MaterialApp.router(
      routerConfig: _router,
      title: ProjectConstant.name,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white70
          )
        ),
        textTheme: GoogleFonts.rubikTextTheme()
      ),
    );
  }
}





final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.initial,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreenView();
      },
    ),
    GoRoute(
      path: RouteName.homePage,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePageView();
      },
    ),
  ],
);



