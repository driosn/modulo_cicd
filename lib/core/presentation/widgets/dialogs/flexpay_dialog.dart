import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class FlexPayDialog extends StatefulWidget {
  const FlexPayDialog({
    super.key,
    required this.onLoadFinished,
  });

  final VoidCallback onLoadFinished;

  @override
  State<FlexPayDialog> createState() => _FlexPayBottomSheetState();
}

class _FlexPayBottomSheetState extends State<FlexPayDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialSettings: InAppWebViewSettings(
        transparentBackground: true,
      ),
      initialFile: 'assets/html/flexpay_dialog_dev.html',
      onLoadStop: (controller, url) async {
        controller.evaluateJavascript(
          source: 'flex.show("introduction");',
        );
        widget.onLoadFinished();
      },
      onConsoleMessage: (controller, consoleMessage) {
        if (consoleMessage.message.contains('close')) {
          Navigator.pop(context);
        }
      },
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        final url = navigationAction.request.url.toString();

        if (url.contains('getflex')) {
          launchUrl(Uri.parse(url));
          return NavigationActionPolicy.CANCEL;
        }
        return NavigationActionPolicy.ALLOW;
      },
    );
  }
}
