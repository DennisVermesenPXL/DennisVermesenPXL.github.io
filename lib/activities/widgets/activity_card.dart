import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/activities/models/activity.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(0),
      color: AppStyle.lightBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: activity.image,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  activity.title,
                  style: AppStyle.header6Style,
                ),
                const Gap(24),
                SelectableText(
                  activity.description,
                  style: AppStyle.mediumTextStyle,
                  textAlign: TextAlign.justify,
                ),
                const Gap(20),
                if (activity.note != null) ...[
                  const Gap(4),
                  SelectableText(
                    activity.note!,
                    style: AppStyle.smallTextStyle,
                    textAlign: TextAlign.justify,
                  ),
                ],
                if (activity.location != null) ...[
                  const Gap(4),
                  SelectableText(
                    activity.location!,
                    style: AppStyle.smallTextStyle,
                    textAlign: TextAlign.justify,
                  ),
                ],
                const Gap(4),
                SelectableText(
                  activity.date,
                  style: AppStyle.smallTextStyle,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
