import 'package:flutter/material.dart';
import 'package:web_portfolio/activities/widgets/showcase_app_item.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';
import 'package:web_portfolio/utilities/showcase_app_model.dart';

class ActivitiesBody extends StatelessWidget {
  const ActivitiesBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: AppStyle.maxContentWidth),
      margin: const EdgeInsets.symmetric(horizontal: AppStyle.contentPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const DelayedWidget(
            delayDuration: Duration(milliseconds: 3000),
            from: DelayFrom.bottom,
            child: SelectableText(
              'placeholder',
              style: AppStyle.header6Style,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 24.0),
          const DelayedWidget(
            delayDuration: Duration(milliseconds: 3100),
            from: DelayFrom.bottom,
            child: SelectableText(
              'placeholder',
              style: AppStyle.textStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 56.0),
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 3200),
            from: DelayFrom.bottom,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: apps.map((e) {
                    final availableWidth = constraints.maxWidth;

                    final rowItemCount = context.isDesktop
                        ? 4
                        : context.isTablet
                            ? 3
                            : 1;

                    final itemWidth =
                        (availableWidth - ((rowItemCount - 1) * 16.0)) /
                            rowItemCount;

                    return SizedBox(
                      width: itemWidth,
                      child: ShowcaseAppItem(e),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
