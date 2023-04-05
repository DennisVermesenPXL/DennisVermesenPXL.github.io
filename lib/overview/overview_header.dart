import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/custom_widgets/social_media_buttons.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/diagonal_path_clipper.dart';
import 'package:web_portfolio/utilities/extensions.dart';

import 'widgets/animated_background_image.dart';

class OverviewHeader extends StatelessWidget {
  final ScrollController scrollController;

  const OverviewHeader(
    this.scrollController, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalPathClipper(),
      child: Stack(
        fit: StackFit.loose,
        children: [
          AnimatedBackgroundImage(scrollController),
          Align(
            alignment: Alignment.center,
            child: _buildSurface(context),
          ),
        ],
      ),
    );
  }

  Widget _buildSurface(BuildContext context) {
    // Logo size: when Tablet and Mobile = 56, when Desktop = 64
    final logoSize = ResponsiveValue<double>(
      context,
      defaultValue: 128.0,
      valueWhen: [
        const Condition.equals(name: TABLET, value: 192.0),
        const Condition.largerThan(name: TABLET, value: 256.0),
      ],
    ).value;

    // Max width of centered view when Mobile = 602, Tablet = 800, when Desktop = 1200
    final maxWidth = ResponsiveValue<double>(
      context,
      defaultValue: 602.0,
      valueWhen: [
        const Condition.equals(name: TABLET, value: 800.0),
        const Condition.largerThan(name: TABLET, value: 1200.0),
      ],
    ).value!;

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxWidth: maxWidth),
      height: context.isMobile ? 440.0 : 540.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(48),
          FadeInImage(
            image: const AssetImage('images/profile-picture.png'),
            placeholder: const AssetImage('images/transparent.png'),
            height: logoSize,
            width: logoSize,
            alignment:
                context.isDesktop ? Alignment.centerLeft : Alignment.center,
          ),
          const Spacer(),
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 1000),
            from: DelayFrom.right,
            child: SelectableText(
              AppConstants.appTitle.toUpperCase(),
              style:
                  AppStyle.header1Style.copyWith(color: AppStyle.primaryColor),
              textAlign: context.isDesktop ? TextAlign.left : TextAlign.center,
            ),
          ),
          const Gap(24),
          const SocialMediaButtons(),
          Gap(context.isDesktop ? 96 : 128),
        ],
      ),
    );
  }
}
