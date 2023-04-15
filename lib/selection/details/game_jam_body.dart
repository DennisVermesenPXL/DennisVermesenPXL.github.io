import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/selection/details/game_jam_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class GameJamBody extends StatelessWidget {
  const GameJamBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: AppStyle.maxContentWidth),
      margin: const EdgeInsets.all(AppStyle.contentPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitle(),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle1, 3100),
          const Gap(16),
          _buildText(GameJamConstants.textBlock1, 3200),
          const Gap(16),
          _buildText(GameJamConstants.textBlock2, 3300),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle2, 3400),
          const Gap(16),
          _buildText(GameJamConstants.textBlock3, 3500),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle3, 3600),
          const Gap(16),
          _buildText(GameJamConstants.textBlock4, 3700),
          const Gap(16),
          _buildText(GameJamConstants.textBlock5, 3800),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle4, 3900),
          const Gap(16),
          _buildText(GameJamConstants.textBlock6, 4000),
          const Gap(16),
          _buildText(GameJamConstants.textBlock7, 4100),
          const Gap(16),
          _buildText(GameJamConstants.textBlock8, 4200),
          const Gap(16),
          _buildText(GameJamConstants.textBlock9, 4300),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle5, 4400),
          const Gap(16),
          _buildText(GameJamConstants.textBlock10, 4500),
          const Gap(32),
          _buildSubtitle(GameJamConstants.subtitle6, 4600),
          const Gap(16),
          _buildText(GameJamConstants.textBlock11, 4700),
          const Gap(16),
          _buildText(GameJamConstants.textBlock12, 4800),
          const Gap(16),
          _buildText(GameJamConstants.textBlock13, 4900),
          const Gap(16),
          _buildText(GameJamConstants.textBlock14, 5000),
          const Gap(16),
          _buildText(GameJamConstants.textBlock15, 5100),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const DelayedWidget(
      delayDuration: Duration(milliseconds: 3000),
      from: DelayFrom.bottom,
      child: SelectableText(
        GameJamConstants.title,
        style: AppStyle.header5Style,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildSubtitle(String text, int delayInMilliseconds) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: SelectableText(
        text,
        style: AppStyle.header6Style,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildText(String text, int delayInMilliseconds) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: SelectableText(
        text,
        style: AppStyle.mediumTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
