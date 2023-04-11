import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/activities/models/activity.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class ActivityCard extends StatefulWidget {
  final Activity activity;
  final String? routeName;

  const ActivityCard({Key? key, required this.activity, this.routeName})
      : super(key: key);

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: widget.routeName != null
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: () {
          if (widget.routeName != null) {
            Navigator.of(context).pushNamed(widget.routeName!);
          }
        },
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(0),
          color: AppStyle.lightBackgroundColor,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    child: widget.activity.image,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          widget.activity.title,
                          style: AppStyle.header6Style,
                        ),
                        const Gap(24),
                        SelectableText(
                          widget.activity.description,
                          style: AppStyle.mediumTextStyle,
                          textAlign: TextAlign.justify,
                        ),
                        const Gap(20),
                        if (widget.activity.note != null) ...[
                          const Gap(4),
                          SelectableText(
                            widget.activity.note!,
                            style: AppStyle.smallTextStyle
                                .copyWith(color: AppStyle.primaryColor),
                          ),
                        ],
                        if (widget.activity.location != null) ...[
                          const Gap(4),
                          SelectableText(
                            widget.activity.location!,
                            style: AppStyle.smallTextStyle,
                          ),
                        ],
                        const Gap(4),
                        SelectableText(
                          widget.activity.date,
                          style: AppStyle.smallTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (widget.routeName != null) ...[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: AnimatedOpacity(
                    opacity: _isHovering ? 0.5 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: const ColoredBox(
                      color: AppStyle.darkBackgroundColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: AnimatedOpacity(
                    opacity: _isHovering ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppStyle.accentColor,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                      ),
                      height: 40,
                      child: const Center(
                        child: SelectableText(
                          AppConstants.activityDetails,
                          style: AppStyle.mediumTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
