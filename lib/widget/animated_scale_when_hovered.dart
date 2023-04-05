
import 'package:flutter/material.dart';

// A widget that has 0.6 opacity on normal state, but when hovered it will have
// full visibility (1.0 opacity) and click cursor on it.
class AnimatedScaleWhenHovered extends StatefulWidget {
  final Widget child;

  const AnimatedScaleWhenHovered({
    required this.child,
    super.key,
  });

  @override
  State<AnimatedScaleWhenHovered> createState() => _AnimatedScaleWhenHoveredState();
}

class _AnimatedScaleWhenHoveredState extends State<AnimatedScaleWhenHovered> {
  late bool _hovered;

  @override
  void initState() {
    _hovered = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _hovered = true),
      onExit: (event) => setState(() => _hovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedScale(
        duration: kThemeAnimationDuration,
        scale: _hovered ? 1.2 : 1,
        child: widget.child,
      ),
    );
  }
}
