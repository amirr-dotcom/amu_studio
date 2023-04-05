
import 'package:amu_studios_website/widget/animated_opacity_when_hovered.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    List<String> availableMenu=[
      "Music",
      "Sound Effects",
      "Footage",
      "Artist",
      "Songs",
      "Recordings",
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DelayedWidget(
           animation: DelayedAnimations.SLIDE_FROM_LEFT,
            child: Text("AMU Studio",
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.primaryColor
            ),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0,),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  children: List.generate(availableMenu.length, (index) =>  Padding(
                    padding: const EdgeInsets.fromLTRB(4,0,4,0),
                    child: AnimatedOpacityWhenHovered(
                      child: TextButton(
                        onPressed: () {  },
                        child: Text(availableMenu[index],
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white70
                        ),),
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ),
          AnimatedOpacityWhenHovered(
            child: TextButton(
              onPressed: () {  },
              child: Wrap(
                children: const [
                  Icon(FontAwesomeIcons.user,
                  size: 15,),
                  SizedBox(width: 5,),
                  Text("Sign in",),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
