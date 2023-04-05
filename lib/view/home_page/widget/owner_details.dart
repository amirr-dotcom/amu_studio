import 'package:amu_studios_website/gen/assets.gen.dart';
import 'package:amu_studios_website/widget/animated_scale_when_hovered.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';

class OwnerDetails extends StatelessWidget {
  const OwnerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    Widget widget1=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DelayedWidget(
          delayDuration: const Duration(milliseconds: 500),
          child: Text("Ahmad Hussain",
            style: theme.textTheme.titleMedium?.copyWith(
                fontSize: 30,
                color: Colors.white
            ),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 5,),
        DelayedWidget(
          delayDuration: const Duration(milliseconds: 800),
          child: Text("amu studios Arts & entertainment Editor,cinematographer,Voice Over Artist,Cameraman,Audio Recordist, blogger, content writer youtube.com/user/dreamzaart Followed by storie_by_adil_hussain, freedom_institute_photography, nehal.graphics + 1 more",
            style: theme.textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                color: Colors.white70
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );


    Widget widget2=AnimatedScaleWhenHovered(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(Assets.owner.path,height: 200,),
    ));

    return    Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Row(
          children: [
            Expanded(
                child: widget2
            ),
            Expanded(child: widget1)
          ],
        ),
      ),
    );
  }
}
