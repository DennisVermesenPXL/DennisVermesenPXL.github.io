import 'package:flutter/material.dart';

class HoverColorText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Color hoverColor;

  const HoverColorText({
    super.key,
    required this.text,
    required this.style,
    required this.hoverColor,
  });

  @override
  State<StatefulWidget> createState() => _HoverColorTextState();
}

class _HoverColorTextState extends State<HoverColorText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: widget.style.copyWith(
          color: _isHovered ? widget.hoverColor : widget.style.color,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
