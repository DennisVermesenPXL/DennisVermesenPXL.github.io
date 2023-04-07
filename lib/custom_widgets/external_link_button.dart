import 'package:flutter/material.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/url_launcher.dart';

class ExternalLinkButton extends StatelessWidget {
  final String url;
  final String label;
  final IconData iconData;

  const ExternalLinkButton({
    required this.url,
    required this.label,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrl(url);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: AppStyle.textColor,
            ),
            const SizedBox(width: 24.0),
            SelectableText(
              label.toUpperCase(),
              style: AppStyle.mediumTextStyle,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
