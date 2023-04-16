import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/selection/details/game_dev_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class GameDevBody extends StatelessWidget {
  const GameDevBody({
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
          _buildSubtitle(GameDevConstants.subtitle1, 3100),
          const Gap(16),
          _buildText(GameDevConstants.textBlock1, 3200),
          const Gap(32),
          _buildSubtitle(GameDevConstants.subtitle2, 3300),
          const Gap(16),
          _buildText(GameDevConstants.textBlock2, 3400),
          const Gap(16),
          _buildText(GameDevConstants.textBlock3, 3500),
          const Gap(8),
          _buildImage('images/game-dev/cube-slider.gif', 3300),
          const Gap(32),
          _buildSubtitle(GameDevConstants.subtitle3, 3600),
          const Gap(16),
          _buildText(GameDevConstants.textBlock4, 3700),
          const Gap(16),
          _buildText(GameDevConstants.textBlock5, 3800),
          const Gap(8),
          _buildImage('images/game-dev/color-hexagon.gif', 3300, height: 500),
          const Gap(16),
          _buildText(GameDevConstants.textBlock6, 3900),
          const Gap(16),
          _buildText(GameDevConstants.textBlock7, 4000),
          const Gap(32),
          _buildSubtitle(GameDevConstants.subtitle4, 4100),
          const Gap(16),
          _buildText(
            GameDevConstants.projectTitle1,
            4200,
            color: AppStyle.primaryColor,
          ),
          const Gap(8),
          _buildText(GameDevConstants.textBlock8, 4300),
          const Gap(8),
          _buildImage('images/game-dev/multiplayer-proto.gif', 4300),
          const Gap(16),
          _buildText(
            GameDevConstants.projectTitle2,
            4400,
            color: AppStyle.primaryColor,
          ),
          const Gap(8),
          _buildText(GameDevConstants.textBlock9, 4500),
          const Gap(8),
          _buildImage('images/game-dev/astromon.gif', 4500),
          const Gap(16),
          _buildText(
            GameDevConstants.projectTitle3,
            4600,
            color: AppStyle.primaryColor,
          ),
          const Gap(8),
          _buildText(GameDevConstants.textBlock10, 4700),
          const Gap(8),
          _buildImage('images/game-dev/candy-ball.gif', 3300),
          const Gap(32),
          _buildSubtitle(GameDevConstants.subtitle5, 4800),
          const Gap(16),
          _buildText(GameDevConstants.textBlock11, 4900),
          const Gap(16),
          _buildText(GameDevConstants.textBlock12, 5000),
          const Gap(16),
          _buildText(GameDevConstants.textBlock13, 5100),
          const Gap(16),
          _buildText(GameDevConstants.textBlock14, 5200),
          const Gap(16),
          _buildText(GameDevConstants.textBlock15, 5300),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const DelayedWidget(
      delayDuration: Duration(milliseconds: 3000),
      from: DelayFrom.bottom,
      child: SelectableText(
        GameDevConstants.title,
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

  Widget _buildText(String text, int delayInMilliseconds, {Color? color}) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: SelectableText(
        text,
        style: AppStyle.mediumTextStyle.copyWith(color: color),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildImage(String image, int delayInMilliseconds, {double? height}) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: SizedBox(
        height: height,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
