import 'package:flutter/material.dart';
import 'package:web_portfolio/custom_widgets/delayed_widget.dart';
import 'package:web_portfolio/navigation/widgets/custom_navigation_bar.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class ScrollUpIndicator extends StatefulWidget {
  final ScrollController scrollController;
  final double offset;
  final int selectedPageIndex;

  const ScrollUpIndicator(
      {required this.scrollController,
      super.key,
      required this.offset,
      required this.selectedPageIndex});

  @override
  State<ScrollUpIndicator> createState() => _ScrollUpIndicatorState();
}

class _ScrollUpIndicatorState extends State<ScrollUpIndicator> {
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
              Align(
                alignment: Alignment.topCenter,
                child: DelayedWidget(
                  from: DelayFrom.top,
                  duration: const Duration(milliseconds: 1200),
                  child: Container(
                    height: 64,
                    color: AppStyle.lightBackgroundColor,
                    width: double.infinity,
                    child: Center(
                      child: CustomNavigationBar(
                        selectedPageIndex: widget.selectedPageIndex,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: DelayedWidget(
                  from: DelayFrom.bottom,
                  duration: const Duration(milliseconds: 1200),
                  child: _buildScrollUpButton(),
                ),
              )
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
    return Padding(
      padding: const EdgeInsets.all(AppStyle.contentPadding),
      child: FloatingActionButton(
        backgroundColor: AppStyle.secondaryColor,
        hoverColor: AppStyle.accentColor,
        focusColor: AppStyle.accentColor,
        onPressed: () => _navigateUp(),
        child: const Icon(
          Icons.arrow_upward_rounded,
          color: AppStyle.textColor,
          size: 32.0,
        ),
      ),
    );
  }
}
