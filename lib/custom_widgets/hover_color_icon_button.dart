import 'package:flutter/material.dart';

class HoverColorIconButton extends StatefulWidget {
  final IconData iconData;
  final Color defaultColor;
  final Color hoverColor;
  final VoidCallback onPressed;
  final double size;
  final EdgeInsetsGeometry padding;

  const HoverColorIconButton({
    Key? key,
    required this.iconData,
    required this.defaultColor,
    required this.hoverColor,
    this.size = 24.0,
    required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
  }) : super(key: key);

  @override
  State<HoverColorIconButton> createState() => _HoverColorIconButtonState();
}

class _HoverColorIconButtonState extends State<HoverColorIconButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _hovered = true),
      onExit: (event) => setState(() => _hovered = false),
      child: IconButton(
        padding: widget.padding,
        icon: Icon(
          widget.iconData,
          color: _hovered ? widget.hoverColor : widget.defaultColor,
          size: widget.size,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
