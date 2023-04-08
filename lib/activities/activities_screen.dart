import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/activities/activities_body.dart';
import 'package:web_portfolio/custom_widgets/app_footer.dart';
import 'package:web_portfolio/custom_widgets/custom_drawer.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/navigation/widgets/custom_navigation_bar.dart';
import 'package:web_portfolio/navigation/widgets/scroll_navigator.dart';
import 'package:web_portfolio/overview/widgets/animated_background_image.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({super.key});

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isDesktop
          ? null
          : AppBar(
        title: const Text(
          AppConstants.activitiesTitle,
          style: AppStyle.header4Style,
        ),
              backgroundColor: AppStyle.lightBackgroundColor,
            ),
      backgroundColor: AppStyle.darkBackgroundColor,
      drawer: context.isDesktop ? null : const CustomDrawer(),
      body: Stack(
        children: [
          Scrollbar(
            controller: _scrollController,
            thumbVisibility: context.isDesktop,
            trackVisibility: context.isDesktop,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AnimatedBackgroundImage(
                    _scrollController,
                    height: 240,
                    mobileHeight: 160,
                    imageName: 'binary-blue.png',
                    opacity: 0.5,
                  ),
                  if (context.isDesktop) ...[
                    const Gap(32),
                    const DelayedWidget(
                      delayDuration: Duration(milliseconds: 2000),
                      from: DelayFrom.top,
                      child: CustomNavigationBar(
                        underline: true,
                      ),
                    ),
                  ],
                  const Gap(32),
                  const ActivitiesBody(),
                  const Gap(32),
                  const AppFooter(),
                ],
              ),
            ),
          ),
          ScrollNavigator(
            scrollController: _scrollController,
            offset: 300,
          ),
        ],
      ),
    );
  }
}
