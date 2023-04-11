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
          const Gap(8.0),
          ..._buildTextBlocks(AppConstants.overviewTextBlocks1, 3100),
          const Gap(8.0),
          DelayedWidget(
            delayDuration: Duration(
              milliseconds:
                  3200 + AppConstants.overviewTextBlocks1.length * 100,
            ),
            from: DelayFrom.bottom,
            child: Image.asset(
              'images/thalento.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          ..._buildTextBlocks(
            AppConstants.overviewTextBlocks2,
            3300 + AppConstants.overviewTextBlocks1.length * 100,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTextBlocks(
    List<String> textBlocks,
    int delayInMilliseconds,
  ) {
    return List.generate(
      textBlocks.length,
      (index) => DelayedWidget(
        delayDuration:
            Duration(milliseconds: delayInMilliseconds + 100 * index),
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: SelectableText(
            textBlocks[index],
            style: AppStyle.mediumTextStyle,
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
