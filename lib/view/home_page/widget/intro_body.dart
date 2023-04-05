

import 'package:amu_studios_website/gen/assets.gen.dart';
import 'package:amu_studios_website/widget/animated_scale_when_hovered.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Container(
      decoration:  const BoxDecoration(
       color: Colors.black
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 20,
            child: AnimatedScaleWhenHovered(
              child: Assets.png.microphone.image(
                height: 200
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 0,
            child: AnimatedScaleWhenHovered(
              child: Assets.png.microphoneGold.image(
                  height: 200
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  children: [
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 300),
                      child: GradientText("All you need to crate\namazing sound",
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontSize: 80,
                        height: 1
                      ),
                      textAlign: TextAlign.center,
                      colors: [
                        theme.primaryColor,
                        Colors.white70,
                      ],),
                    ),
                    const SizedBox(height: 40,),
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 600),
                      animation: DelayedAnimations.SLIDE_FROM_LEFT,
                      child: Text("Get the highest quality recording by top industry artist",
                        style: theme.textTheme.titleMedium?.copyWith(
                            fontSize: 20,
                          color: Colors.white70
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 40,),
                    DelayedWidget(
                      delayDuration: const Duration(milliseconds: 900),
                      animation: DelayedAnimations.SLIDE_FROM_LEFT,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: theme.primaryColor,

                        ),
                        onPressed: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,10,20,10),
                          child: Text("Book Now",
                            style: theme.textTheme.titleMedium?.copyWith(
                                fontSize: 20,
                                color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
