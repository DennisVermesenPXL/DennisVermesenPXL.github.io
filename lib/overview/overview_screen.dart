import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/app_footer.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/custom_widgets/scroll_up_indicator.dart';
import 'package:web_portfolio/navigation/widgets/custom_navigation_bar.dart';
import 'package:web_portfolio/overview/overview_body.dart';
import 'package:web_portfolio/overview/overview_header.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
      backgroundColor: AppStyle.darkBackgroundColor,
      body: Stack(
        children: [
          Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  OverviewHeader(_scrollController),
                  const Gap(32),
                  const DelayedWidget(
                    delayDuration: Duration(milliseconds: 2000),
                    from: DelayFrom.top,
                    child: CustomNavigationBar(
                      selectedPageIndex: 0,
                    ),
                  ),
                  const Gap(32),
                  const OverviewBody(),
                  const Gap(32),
                  const AppFooter(),
                ],
              ),
            ),
          ),
          ScrollUpIndicator(
            selectedPageIndex: 0,
            scrollController: _scrollController,
            offset: 600,
          ),
        ],
      ),
    );
  }
}
