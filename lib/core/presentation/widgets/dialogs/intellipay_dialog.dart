import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class IntelliPayDialogParams {
  const IntelliPayDialogParams({
    required this.javascriptCode,
    required this.passThrough,
    required this.token,
    required this.amount,
    required this.email,
  });

  final String javascriptCode;
  final String passThrough;
  final String token;
  final double amount;
  final String email;
}

class IntelliPayDialog extends StatefulWidget {
  const IntelliPayDialog({
    super.key,
    required this.dialogParams,
    required this.server,
    required this.onLoadFinished,
    required this.onApproved,
    required this.onNonApproved,
  });

  final IntelliPayDialogParams dialogParams;
  final HttpServer server;
  final VoidCallback onLoadFinished;
  final VoidCallback onApproved;
  final VoidCallback onNonApproved;

  @override
  State<IntelliPayDialog> createState() => _IntelliPayDialogState();
}

class _IntelliPayDialogState extends State<IntelliPayDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final code = widget.dialogParams.javascriptCode;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: InAppWebView(
          initialSettings: InAppWebViewSettings(
            transparentBackground: true,
          ),
          initialUrlRequest: URLRequest(
            url: WebUri.uri(
              Uri.parse(
                'http://${widget.server.address.host}:${widget.server.port}',
              ),
            ),
          ),
          onWebViewCreated: (controller) {
            controller.addJavaScriptHandler(
              handlerName: 'fl_close',
              callback: (args) {
                Navigator.pop(context);
              },
            );

            controller.addJavaScriptHandler(
              handlerName: 'fl_approved',
              callback: (args) {
                if (kDebugMode) {
                  print(args);
                }
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  widget.onApproved();
                });
              },
            );

            controller.addJavaScriptHandler(
              handlerName: 'fl_non_approved',
              callback: (args) {
                if (kDebugMode) {
                  print(args);
                }
                Navigator.pop(context);
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  widget.onNonApproved();
                });
              },
            );
          },
          onLoadStop: (controller, url) async {
            await controller.evaluateJavascript(
                source: 'addToHeader(`$code`);');
            await controller.evaluateJavascript(
                source: 'initializeIntellipay();');
            await Future.delayed(const Duration(seconds: 3));
            await controller.evaluateJavascript(
                source:
                    'setPassthrough(`${widget.dialogParams.passThrough}`);');
            await controller.evaluateJavascript(
                source: 'setToken(`${widget.dialogParams.token}`);');
            await controller.evaluateJavascript(
                source: 'setEmail(`${widget.dialogParams.email}`);');
            await controller.evaluateJavascript(
                source:
                    'setCreditCardAmount(`${widget.dialogParams.amount}`);');

            await controller.evaluateJavascript(source: 'openIntellipay();');
            widget.onLoadFinished();
          },
        ),
      ),
    );
  }
}
