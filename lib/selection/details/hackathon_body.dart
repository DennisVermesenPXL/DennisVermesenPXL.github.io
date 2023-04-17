import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/selection/details/hackathon_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class HackathonBody extends StatelessWidget {
  const HackathonBody({
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
          _buildSubtitle(HackathonConstants.subtitle1, 3100),
          const Gap(16),
          _buildText(HackathonConstants.textBlock1, 3200),
          const Gap(16),
          _buildText(HackathonConstants.textBlock2, 3300),
          const Gap(32),
          _buildSubtitle(HackathonConstants.subtitle2, 3400),
          const Gap(16),
          _buildText(HackathonConstants.textBlock3, 3500),
          const Gap(32),
          _buildSubtitle(HackathonConstants.subtitle3, 3600),
          const Gap(16),
          _buildText(HackathonConstants.textBlock4, 3700),
          const Gap(16),
          _buildText(HackathonConstants.textBlock5, 3800),
          const Gap(32),
          _buildSubtitle(HackathonConstants.subtitle4, 3900),
          const Gap(16),
          _buildText(HackathonConstants.textBlock6, 4000),
          const Gap(16),
          _buildText(HackathonConstants.textBlock7, 4100),
          const Gap(8),
          _buildImage('images/hackathon/login.gif', 4200),
          const Gap(16),
          _buildText(HackathonConstants.textBlock8, 4300),
          const Gap(8),
          _buildImage('images/hackathon/load-pdf.gif', 4400),
          const Gap(16),
          _buildText(HackathonConstants.textBlock9, 4500),
          const Gap(8),
          _buildImage('images/hackathon/drawing.gif', 4600),
          const Gap(8),
          _buildImage('images/hackathon/ruler-and-protractor.gif', 4700),
          const Gap(16),
          _buildText(HackathonConstants.textBlock10, 4800),
          const Gap(8),
          _buildImage('images/hackathon/save-pdf.gif', 4900),
          const Gap(16),
          _buildText(HackathonConstants.textBlock11, 5000),
          const Gap(8),
          _buildImage('images/hackathon/equations.gif', 5100),
          const Gap(16),
          _buildText(HackathonConstants.textBlock12, 5200),
          const Gap(8),
          _buildImage('images/hackathon/save-equations.gif', 5300),
          const Gap(32),
          _buildSubtitle(HackathonConstants.subtitle5, 5400),
          const Gap(16),
          _buildText(HackathonConstants.textBlock13, 5500),
          const Gap(16),
          _buildText(HackathonConstants.textBlock14, 5600),
          const Gap(16),
          _buildText(HackathonConstants.textBlock15, 5700),
          const Gap(16),
          _buildText(HackathonConstants.textBlock16, 5800),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const DelayedWidget(
      delayDuration: Duration(milliseconds: 3000),
      from: DelayFrom.bottom,
      child: SelectableText(
        HackathonConstants.title,
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

  Widget _buildImage(String image, int delayInMilliseconds) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
