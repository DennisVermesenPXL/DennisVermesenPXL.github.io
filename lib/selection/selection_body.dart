import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/activities/widgets/activity_card.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class SelectionBody extends StatelessWidget {
  const SelectionBody({
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
          _buildTitle(3000),
          const Gap(16.0),
          _buildSubtitle(3100),
          const Gap(32),
          _buildActivities(3300),
        ],
      ),
    );
  }

  Widget _buildTitle(int delayInMilliseconds) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: const SelectableText(
        AppConstants.selectionTitle,
        style: AppStyle.header5Style,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildSubtitle(int delayInMilliseconds) {
    return DelayedWidget(
      delayDuration: Duration(milliseconds: delayInMilliseconds),
      from: DelayFrom.bottom,
      child: const SelectableText(
        AppConstants.selectionSubtitle,
        style: AppStyle.mediumTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildActivities(int delayInMilliseconds) {
    final activities = AppConstants.selectedActivities;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: activities.map((activity) {
            final availableWidth = constraints.maxWidth;
            final rowItemCount = context.isMobile ? 1 : 3;
            final itemWidth =
                (availableWidth - ((rowItemCount - 1) * 16.0)) / rowItemCount;
            return DelayedWidget(
              from: DelayFrom.right,
              delayDuration: Duration(
                milliseconds:
                    delayInMilliseconds + 100 * activities.indexOf(activity),
              ),
              child: SizedBox(
                width: itemWidth,
                child: ActivityCard(
                  activity: activity,
                  routeName: activity.routeName,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
