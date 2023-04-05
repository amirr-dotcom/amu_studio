import 'package:amu_studios_website/view/home_page/widget/header.dart';
import 'package:amu_studios_website/view/home_page/widget/intro_body.dart';
import 'package:amu_studios_website/view/home_page/widget/owner_details.dart';
import 'package:amu_studios_website/view/home_page/widget/social_handle.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            IntroBody(),
            SizedBox(height: 5,),
            SocialHandles(),
            SizedBox(height: 5,),
            OwnerDetails(),
          ],
        ),
      ),
    );
  }
}
