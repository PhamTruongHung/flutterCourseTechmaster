import 'package:flutter_learning/toast/toast_context.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(
      MaterialApp(
        builder: FToastBuilder(),
        home: const ToastContext(),
        navigatorKey: navigatorKey,
      ),
    );
