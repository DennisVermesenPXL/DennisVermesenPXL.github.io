import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class OverviewBody extends StatelessWidget {
  const OverviewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textBlocks = AppConstants.overviewTextBlocks;
    return Container(
      constraints: const BoxConstraints(maxWidth: AppStyle.maxContentWidth),
      margin: const EdgeInsets.all(AppStyle.contentPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const DelayedWidget(
            delayDuration: Duration(milliseconds: 3000),
            from: DelayFrom.bottom,
            child: SelectableText(
              AppConstants.overviewTitle,
              style: AppStyle.header5Style,
              textAlign: TextAlign.justify,
            ),
          ),
          const Gap(32.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              textBlocks.length,
              (index) => DelayedWidget(
                delayDuration: Duration(milliseconds: 3100 + 100 * index),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: SelectableText(
                    textBlocks[index],
                    style: AppStyle.mediumTextStyle,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
