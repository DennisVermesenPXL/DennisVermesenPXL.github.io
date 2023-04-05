import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/hover_color_text.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedPageIndex;

  const CustomNavigationBar({Key? key, required this.selectedPageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: AppStyle.maxContentWidth),
      margin: const EdgeInsets.symmetric(horizontal: AppStyle.contentPadding),
      child: Row(
        mainAxisAlignment: context.isDesktop
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: HoverColorText(
              text: 'Home',
              style: AppStyle.header3Style.copyWith(
                color: selectedPageIndex == 0
                    ? AppStyle.accentColor
                    : AppStyle.primaryColor,
              ),
              hoverColor: AppStyle.accentColor,
            ),
          ),
          const Gap(24),
          InkWell(
            child: HoverColorText(
              text: 'About',
              style: AppStyle.header3Style.copyWith(
                color: selectedPageIndex == 1
                    ? AppStyle.accentColor
                    : AppStyle.primaryColor,
              ),
              hoverColor: AppStyle.accentColor,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          const Gap(24),
          InkWell(
            child: HoverColorText(
              text: 'Contact',
              style: AppStyle.header3Style.copyWith(
                color: selectedPageIndex == 2
                    ? AppStyle.accentColor
                    : AppStyle.primaryColor,
              ),
              hoverColor: AppStyle.accentColor,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}
