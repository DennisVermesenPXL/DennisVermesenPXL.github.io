import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/activities/models/activity.dart';
import 'package:web_portfolio/activities/widgets/activity_card.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/data_loader.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class ActivitiesBody extends StatelessWidget {
  const ActivitiesBody({
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
          const Gap(16.0),
          _buildText('activities_subtitle', 3100),
          const Gap(64),
          _buildSubtitle('seminars_title', 3200),
          const Gap(32),
          _buildActivities(seminars, 3300),
          const Gap(64),
          _buildSubtitle('pop_title', 3400 + seminars.length * 100),
          const Gap(32),
          _buildActivities(popSessions, 3500 + seminars.length * 100),
          const Gap(64),
          _buildSubtitle('innovation_title',
              3600 + (seminars.length + popSessions.length) * 100),
          const Gap(32),
          _buildActivities(innovationRoutes,
              3700 + (seminars.length + popSessions.length) * 100),
          const Gap(64),
          _buildSubtitle(
              'engagement_title',
              3800 +
                  (seminars.length +
                          popSessions.length +
                          innovationRoutes.length) *
                      100),
          const Gap(32),
          _buildActivities(
              engagements,
              3900 +
                  (seminars.length +
                          popSessions.length +
                          innovationRoutes.length) *
                      100),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return DelayedWidget(
      delayDuration: const Duration(milliseconds: 3000),
      from: DelayFrom.bottom,
      child: SelectableText(
        DataLoader.getText('activities_title'),
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
        DataLoader.getText(text),
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
        DataLoader.getText(text),
        style: AppStyle.mediumTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildActivities(List<Activity> activities, int delayInMilliseconds) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: activities.map((activity) {
            final availableWidth = constraints.maxWidth;
            final rowItemCount = context.isDesktop
                ? 4
                : context.isTablet
                    ? 3
                    : 1;
            final itemWidth =
                (availableWidth - ((rowItemCount - 1) * 16.0)) / rowItemCount;
            return DelayedWidget(
              from: DelayFrom.right,
              delayDuration: Duration(
                  milliseconds:
                      delayInMilliseconds + 100 * activities.indexOf(activity)),
              child: SizedBox(
                width: itemWidth,
                child: ActivityCard(
                  activity: activity,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
