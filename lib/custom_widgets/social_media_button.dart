import 'package:flutter/material.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/custom_widgets/hover_color_icon_button.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final String url;
  final IconData iconData;
  final double size;
  final int index;

  const SocialMediaButton({
    required this.url,
    required this.iconData,
    required this.index,
    this.size = 30.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: 1500 + ((index + 1) * 125)),
      from: DelayFrom.bottom,
      child: HoverColorIconButton(
        onPressed: () => launchUrl(url),
        iconData: iconData,
        defaultColor: AppStyle.textColor,
        hoverColor: AppStyle.accentColor,
        size: size,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
