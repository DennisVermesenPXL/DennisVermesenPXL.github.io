import 'package:flutter/material.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class AnimatedBackgroundImage extends StatefulWidget {
  final ScrollController scrollController;
  final double height;
  final double mobileHeight;
  final String imageName;
  final double opacity;

  const AnimatedBackgroundImage(
    this.scrollController, {
    super.key,
    required this.height,
    required this.mobileHeight,
    required this.imageName,
    required this.opacity,
  });

  @override
  State<AnimatedBackgroundImage> createState() =>
      _AnimatedBackgroundImageState();
}

class _AnimatedBackgroundImageState extends State<AnimatedBackgroundImage> {
  late double _y;

  @override
  void initState() {
    super.initState();

    _y = 0.0;

    widget.scrollController.addListener(() {
      final offset = widget.scrollController.offset;

      /// Only update alignment of the background image while it is visible.
      if (offset < 500) {
        /// Divide current scroll offset by 1000 to make it more smooth.
        setState(() => _y = widget.scrollController.offset / 1000);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = context.isMobile ? widget.mobileHeight : widget.height;
    return SizedBox(
      height: height,
      width: double.maxFinite,
      child: Opacity(
        opacity: widget.opacity,
        child: FadeInImage(
          placeholder: const AssetImage('images/transparent.png'),
          image: AssetImage('images/${widget.imageName}'),
          fit: BoxFit.cover,
          alignment: Alignment(0.0, _y),
        ),
      ),
    );
  }
}
