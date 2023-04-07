import 'package:flutter/material.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/custom_widgets/hover_color_icon_button.dart';
import 'package:web_portfolio/navigation/widgets/custom_navigation_bar.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class ScrollNavigator extends StatefulWidget {
  final ScrollController scrollController;
  final double offset;

  const ScrollNavigator({
    required this.scrollController,
    super.key,
    required this.offset,
  });

  @override
  State<ScrollNavigator> createState() => _ScrollNavigatorState();
}

class _ScrollNavigatorState extends State<ScrollNavigator> {
  late bool _visible = false;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      final offset = widget.scrollController.offset;

      if (offset > widget.offset) {
        if (!_visible) setState(() => _visible = true);
      } else {
        if (_visible) setState(() => _visible = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _visible
          ? [
              if (context.isDesktop) _buildNavBar(),
              _buildScrollUpButton(),
            ]
          : [],
    );
  }

  _navigateUp() {
    widget.scrollController.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  Widget _buildScrollUpButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: DelayedWidget(
        from: DelayFrom.bottom,
        duration: const Duration(milliseconds: 1200),
        child: Padding(
          padding: const EdgeInsets.all(AppStyle.contentPadding),
          child: FloatingActionButton(
            onPressed: () => _navigateUp(),
            child: const Icon(
              Icons.arrow_upward_rounded,
              color: AppStyle.darkBackgroundColor,
              size: 32.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavBar() {
    return Align(
      alignment: Alignment.topCenter,
      child: DelayedWidget(
        from: DelayFrom.top,
        duration: const Duration(milliseconds: 1200),
        child: Container(
          height: 64,
          color: AppStyle.lightBackgroundColor,
          width: double.infinity,
          child: const Center(
            child: CustomNavigationBar(),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: HoverColorIconButton(
        padding: const EdgeInsets.all(18.0),
        iconData: Icons.menu,
        size: 48,
        defaultColor: AppStyle.primaryColor,
        hoverColor: AppStyle.accentColor,
        onPressed: () {},
      ),
    );
  }
}
