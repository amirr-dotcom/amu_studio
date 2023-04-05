




import 'package:amu_studios_website/app_manager/util/url_launcher.dart';
import 'package:amu_studios_website/gen/assets.gen.dart';
import 'package:amu_studios_website/model/option.dart';
import 'package:amu_studios_website/repository/social_handles_repository.dart';
import 'package:amu_studios_website/widget/animated_scale_when_hovered.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SocialHandles extends StatelessWidget {
  const SocialHandles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Container(
      decoration:  const BoxDecoration(
          color: Colors.black
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: SocialHandlesRepository.list.length,
            itemBuilder: (context,index){
              Option<String> socialHandle=SocialHandlesRepository.list[index];


              Widget widget1=Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedWidget(
                    delayDuration: const Duration(milliseconds: 500),
                    child: Text(socialHandle.title??"",
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
                    child: Text(socialHandle.subTitle??"",
                      style: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                          color: Colors.white70
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              );


              Widget widget2=AnimatedScaleWhenHovered(child: InkWell(

                  onTap: (){
                    launchUrl(socialHandle.link??"");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(socialHandle.extra??"",height: 200,),
                  )));

              return  Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ((index+1) %2 ==0)?
                Row(
                  children: [
                    Expanded(
                        child: widget2
                    ),
                    Expanded(child: widget1)
                  ],
                )
                    :Row(
                  children: [
                    Expanded(
                        child: widget1
                    ),
                    Expanded(child: widget2)
                  ],
                ),
              );
            }),
      ),
    );
  }
}
