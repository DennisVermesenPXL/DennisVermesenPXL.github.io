import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/hover_color_text.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';
import 'package:web_portfolio/utilities/string_extensions.dart';

class CustomNavigationBar extends StatelessWidget {
  final bool underline;

  const CustomNavigationBar({
    Key? key,
    this.underline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: AppStyle.maxContentWidth),
      margin: const EdgeInsets.symmetric(horizontal: AppStyle.contentPadding),
      child: underline
          ? Column(
              children: [
                _buildButtons(context),
                const Gap(24),
                const Divider(),
              ],
            )
          : _buildButtons(context),
    );
  }

  Widget _buildButtons(BuildContext context) {
    final routeNames = AppConstants.routes.keys.toList();
    return Row(
      mainAxisAlignment: context.isDesktop
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < routeNames.length; i++) ...[
          _buildNavigationButton(context, routeNames[i]),
          if (i < routeNames.length - 1) const Gap(32),
        ]
      ],
    );
  }

  Widget _buildNavigationButton(BuildContext context, String routeName) {
    return InkWell(
      child: HoverColorText(
        text: routeName.capitalizeFirstLetter(),
        style: AppStyle.header3Style.copyWith(
          color: AppStyle.primaryColor,
        ),
        hoverColor: AppStyle.accentColor,
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
