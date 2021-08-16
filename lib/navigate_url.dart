import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void launchURL() async {
  const url = 'https://bpbd.bojonegorokab.go.id/';
  await FlutterWebBrowser.openWebPage(url: url, customTabsOptions: CustomTabsOptions(toolbarColor: Colors.lightBlue, showTitle: true,
      urlBarHidingEnabled: true));
}