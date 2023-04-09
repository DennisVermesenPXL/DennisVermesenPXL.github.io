import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/custom_widgets/social_media_button.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/extensions.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: context.isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: const [
        SocialMediaButton(
          index: 0,
          url: AppConstants.gitHubProfileURL,
          iconData: FontAwesomeIcons.github,
        ),
        Gap(16),
        SocialMediaButton(
          index: 1,
          url: AppConstants.eMail,
          iconData: Icons.alternate_email_rounded,
        ),
        Gap(16),
        SocialMediaButton(
          index: 2,
          url: AppConstants.linkedInProfileURL,
          iconData: FontAwesomeIcons.linkedin,
        ),
        Gap(16),
        SocialMediaButton(
          index: 3,
          url: AppConstants.googlePlayProfile,
          iconData: FontAwesomeIcons.googlePlay,
        ),
      ],
    );
  }
}
