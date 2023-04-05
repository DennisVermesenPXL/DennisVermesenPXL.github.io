import 'package:flutter/material.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class AnimatedImageOverlay extends StatefulWidget {
  final String topic;

  const AnimatedImageOverlay(
    this.topic, {
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedImageOverlay> createState() => _AnimatedImageOverlayState();
}

class _AnimatedImageOverlayState extends State<AnimatedImageOverlay> {
  late bool _hovered;

  @override
  void initState() {
    super.initState();
    _hovered = false;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedOpacity(
        duration: kThemeAnimationDuration,
        opacity: _hovered ? 1.0 : 0.0,
        child: Container(
          height: 552.0,
          alignment: Alignment.center,
          color: Colors.black45,
          child: SelectableText(
            widget.topic,
            style: AppStyle.header5Style,
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
