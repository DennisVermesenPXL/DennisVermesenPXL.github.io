import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/hover_color_text.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/string_extensions.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppStyle.lightBackgroundColor,
        padding: const EdgeInsets.all(AppStyle.contentPadding),
        child: _buildButtons(context),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    final routeNames = AppConstants.routes.keys.toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        style: AppStyle.header5Style.copyWith(
          color: AppStyle.textColor,
        ),
        hoverColor: AppStyle.accentColor,
      ),
      onTap: () {
        Navigator.popAndPushNamed(context, routeName);
      },
    );
  }
}
