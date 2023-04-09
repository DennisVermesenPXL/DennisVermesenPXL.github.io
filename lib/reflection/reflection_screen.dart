import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/app_footer.dart';
import 'package:web_portfolio/custom_widgets/custom_drawer.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/navigation/widgets/custom_navigation_bar.dart';
import 'package:web_portfolio/navigation/widgets/scroll_navigator.dart';
import 'package:web_portfolio/overview/widgets/animated_background_image.dart';
import 'package:web_portfolio/reflection/reflection_body.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class ReflectionScreen extends StatefulWidget {
  const ReflectionScreen({super.key});

  @override
  State<ReflectionScreen> createState() => _ReflectionScreenState();
}

class _ReflectionScreenState extends State<ReflectionScreen> {
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
                AppConstants.reflectionTitle,
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
                    height: 440,
                    mobileHeight: 540,
                    imageName: 'pxl-x-factor-people.png',
                    opacity: 0.45,
                  ),
                  if (context.isDesktop) ...[
                    const DelayedWidget(
                      delayDuration: Duration(milliseconds: 2000),
                      from: DelayFrom.top,
                      child: CustomNavigationBar(
                        underline: true,
                      ),
                    ),
                    const Gap(32),
                  ],
                  const ReflectionBody(),
                  const Gap(32),
                  const AppFooter(),
                ],
              ),
            ),
          ),
          ScrollNavigator(
            scrollController: _scrollController,
            offset: 450,
          ),
        ],
      ),
    );
  }
}
