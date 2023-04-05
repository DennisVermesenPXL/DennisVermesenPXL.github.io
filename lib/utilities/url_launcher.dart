import 'package:url_launcher/url_launcher_string.dart';

void launchUrl(String url) {
  launchUrlString(
    url,
    webViewConfiguration: const WebViewConfiguration(
      enableJavaScript: true,
    ),
  );
}
