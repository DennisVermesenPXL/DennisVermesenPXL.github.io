import 'package:flutter/material.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            ),
          ),
          const SizedBox(height: 56.0),
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 3200),
            from: DelayFrom.bottom,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                30,
                (index) => const SelectableText(
                  'Placeholder text kfsfjsfl dslksdflsqd flkjslkfdjs fkjsdlfjds fksjf dskj fdsjfs fdjs flkds jfslqjfdskf fsjflkjdsfjds fjslfjsdkf ksjfldsjfldsf kfjlsqjfls ldfj ds fdkf f sfjsfl sfslfjsldkjf fsdsflkflsdf jslfsldjfskjdflksf lskfjdslflkdsflqsdfjdslkflkds ',
                  style: AppStyle.textStyle,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
