import 'package:flutter/material.dart';
import 'package:web_portfolio/activities/activities_screen.dart';
import 'package:web_portfolio/activities/models/activity.dart';
import 'package:web_portfolio/overview/overview_screen.dart';
import 'package:web_portfolio/reflection/reflection_screen.dart';
import 'package:web_portfolio/selection/selection_screen.dart';

class AppConstants {
  static const appTitle = 'Dennis Vermesen';
  static const footerText =
      'Copyright © 2023 Dennis Vermesen. All Rights Reserved';
  static Map<String, WidgetBuilder> routes = {
    'voorstelling': (BuildContext context) => const OverviewScreen(),
    'activiteiten': (BuildContext context) => const ActivitiesScreen(),
    'selectie': (BuildContext context) => const SelectionScreen(),
    'reflectie': (BuildContext context) => const ReflectionScreen(),
  };

  static const gitHubProfileURL = 'https://github.com/DennisVermesenPXL';
  static const linkedInProfileURL = 'https://linkedin.com/in/dennisvermesen';
  static const eMail = 'mailto:dennisvermesen@gmail.com';
  static const googlePlayProfile =
      'https://play.google.com/store/apps/dev?id=6252932495764188003';
  static const flutterWebSiteURL = 'https://flutter.dev';

  static const overviewTitle = 'Voorstelling';
  static const overviewTextBlocks = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum faucibus leo. Etiam semper augue id sapien porttitor luctus. In malesuada fringilla malesuada. Phasellus ornare pharetra ex ut congue. Vivamus consequat lorem eu rutrum posuere. Suspendisse potenti. Aliquam sit amet molestie orci. Vestibulum consectetur libero libero, vitae blandit mauris egestas vitae. Cras vitae purus consequat, mollis mi id, mattis turpis. Sed sollicitudin sapien sit amet metus ornare tristique.',
    'Donec sit amet semper libero, ac tincidunt felis. Cras fermentum diam vel imperdiet volutpat. Nunc mattis urna sem, sed imperdiet lectus vulputate ut. Phasellus lacinia nibh nec nisl mattis ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec dapibus, mi sit amet sagittis gravida, massa enim pharetra ligula, ut tincidunt mauris sem et erat. Aenean dignissim tempus sem, et feugiat ante fermentum id. Phasellus sit amet ipsum suscipit metus hendrerit sodales. Quisque pellentesque porta tellus vitae molestie. Cras ultricies nulla eget fermentum tincidunt. Suspendisse potenti. Mauris consectetur eros eget nunc pellentesque luctus. Cras non felis ornare enim aliquam cursus. Integer aliquet pellentesque nulla. Etiam luctus tincidunt pharetra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    'Phasellus ac faucibus ligula. Suspendisse viverra, massa eget molestie pellentesque, mi lacus suscipit massa, eget vestibulum purus risus et nulla. Proin et tristique mi, nec porttitor urna. Quisque vitae eros non diam cursus vehicula a vitae tortor. Proin tincidunt dictum egestas. Quisque at dui placerat, condimentum dui et, finibus ligula. Donec id ullamcorper turpis. Nulla facilisi. Nulla dignissim vel mi at volutpat. Phasellus neque libero, volutpat ut ex id, pulvinar volutpat velit. In hac habitasse platea dictumst. Nunc tempor maximus lorem, in dictum turpis varius venenatis. Aliquam eget magna tellus. Proin et nunc posuere, vestibulum metus vel, fermentum dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus elit velit, scelerisque eget neque ac, tincidunt tincidunt neque.',
    'Donec imperdiet urna sit amet libero fermentum tempus. Praesent non ligula maximus, hendrerit erat quis, tempus eros. Praesent neque nisi, ultrices eu ullamcorper sed, mattis id erat. Sed eleifend dui in vehicula iaculis. Nam sollicitudin suscipit mi sed imperdiet. Fusce commodo lectus id justo tempor vestibulum. Sed interdum magna non pretium ullamcorper. Sed vestibulum placerat pellentesque.',
    'Nullam tincidunt risus purus, nec tempus tellus fringilla eu. Sed tristique pulvinar lectus non pulvinar. Nunc lobortis convallis felis sed fringilla. Nam lacus nibh, elementum eu tincidunt fermentum, iaculis sit amet velit. Integer elementum leo quam, eu scelerisque libero finibus sit amet. Donec cursus tortor id arcu pretium euismod. Maecenas commodo fermentum elit, eu varius felis congue pharetra. In eget turpis suscipit, lacinia massa eu, congue turpis. In tristique rutrum aliquet. Fusce a lacus nulla. Phasellus in lacinia augue, vel rutrum quam. Mauris et malesuada ante.'
  ];

  static const activitiesTitle = 'Alle activiteiten';
  static const activitiesIntro =
      'Dit is een overzicht van alle activiteiten uit mijn portfolio.';
  static const seminarsTitle = 'Seminaries';
  static const popTitle = 'Persoonlijke ontwikkeling';
  static const innovationTitle = 'Innovatie';
  static const engagementTitle = 'Student engagement';
  static const activityDetails = 'Bekijk details';

  static const selectionTitle = 'Selectie van activiteiten';
  static const selectionSubtitle =
      'Dit is een persoonlijke selectie van 3 activiteiten uit mijn portfolio. Dit zijn voor mezelf de meest belangrijke activiteiten uit mijn portfolio.';
  static List<Activity> selectedActivities = [
    seminars[0],
  ];

  static const reflectionTitle = 'Persoonlijke reflectie';
  static const reflectionTextBlocks = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum faucibus leo. Etiam semper augue id sapien porttitor luctus. In malesuada fringilla malesuada. Phasellus ornare pharetra ex ut congue. Vivamus consequat lorem eu rutrum posuere. Suspendisse potenti. Aliquam sit amet molestie orci. Vestibulum consectetur libero libero, vitae blandit mauris egestas vitae. Cras vitae purus consequat, mollis mi id, mattis turpis. Sed sollicitudin sapien sit amet metus ornare tristique.',
    'Donec sit amet semper libero, ac tincidunt felis. Cras fermentum diam vel imperdiet volutpat. Nunc mattis urna sem, sed imperdiet lectus vulputate ut. Phasellus lacinia nibh nec nisl mattis ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec dapibus, mi sit amet sagittis gravida, massa enim pharetra ligula, ut tincidunt mauris sem et erat. Aenean dignissim tempus sem, et feugiat ante fermentum id. Phasellus sit amet ipsum suscipit metus hendrerit sodales. Quisque pellentesque porta tellus vitae molestie. Cras ultricies nulla eget fermentum tincidunt. Suspendisse potenti. Mauris consectetur eros eget nunc pellentesque luctus. Cras non felis ornare enim aliquam cursus. Integer aliquet pellentesque nulla. Etiam luctus tincidunt pharetra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    'Phasellus ac faucibus ligula. Suspendisse viverra, massa eget molestie pellentesque, mi lacus suscipit massa, eget vestibulum purus risus et nulla. Proin et tristique mi, nec porttitor urna. Quisque vitae eros non diam cursus vehicula a vitae tortor. Proin tincidunt dictum egestas. Quisque at dui placerat, condimentum dui et, finibus ligula. Donec id ullamcorper turpis. Nulla facilisi. Nulla dignissim vel mi at volutpat. Phasellus neque libero, volutpat ut ex id, pulvinar volutpat velit. In hac habitasse platea dictumst. Nunc tempor maximus lorem, in dictum turpis varius venenatis. Aliquam eget magna tellus. Proin et nunc posuere, vestibulum metus vel, fermentum dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus elit velit, scelerisque eget neque ac, tincidunt tincidunt neque.',
    'Donec imperdiet urna sit amet libero fermentum tempus. Praesent non ligula maximus, hendrerit erat quis, tempus eros. Praesent neque nisi, ultrices eu ullamcorper sed, mattis id erat. Sed eleifend dui in vehicula iaculis. Nam sollicitudin suscipit mi sed imperdiet. Fusce commodo lectus id justo tempor vestibulum. Sed interdum magna non pretium ullamcorper. Sed vestibulum placerat pellentesque.',
    'Nullam tincidunt risus purus, nec tempus tellus fringilla eu. Sed tristique pulvinar lectus non pulvinar. Nunc lobortis convallis felis sed fringilla. Nam lacus nibh, elementum eu tincidunt fermentum, iaculis sit amet velit. Integer elementum leo quam, eu scelerisque libero finibus sit amet. Donec cursus tortor id arcu pretium euismod. Maecenas commodo fermentum elit, eu varius felis congue pharetra. In eget turpis suscipit, lacinia massa eu, congue turpis. In tristique rutrum aliquet. Fusce a lacus nulla. Phasellus in lacinia augue, vel rutrum quam. Mauris et malesuada ante.'
  ];
}
