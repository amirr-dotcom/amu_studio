
import 'package:amu_studios_website/gen/assets.gen.dart';
import 'package:amu_studios_website/route_name.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if(mounted){
        context.pushReplacement(RouteName.homePage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: DelayedWidget(
        delayDuration: const Duration(milliseconds: 500),
        child: Center(
          child: Assets.logo.image(
            height: 200
          ),
        ),
      ),
    );
  }
}

