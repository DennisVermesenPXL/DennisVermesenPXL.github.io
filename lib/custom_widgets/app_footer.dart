import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/social_media_buttons.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final contentPadding = context.isDesktop
        ? (size.width - AppStyle.maxContentWidth) * 0.5
        : AppStyle.contentPadding;
    final children = [
      const SelectableText(
        AppConstants.footerText,
        style: AppStyle.smallTextStyle,
        textAlign: TextAlign.center,
      ),
      const Gap(24),
      const SocialMediaButtons(),
    ];
    return Container(
      padding: const EdgeInsets.only(
        left: AppStyle.contentPadding,
        right: AppStyle.contentPadding,
        top: 32,
        bottom: 64,
      ),
      color: AppStyle.lightBackgroundColor,
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppStyle.maxContentWidth,
          ),
          child: context.isDesktop
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: children.reversed.toList(),
                ),
        ),
      ),
    );
  }
}
