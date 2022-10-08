// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

alertDialog(BuildContext context, String msg) {
  Toast.show(msg, context, duration: 3, gravity: Toast.CENTER);
}

alertDilog(BuildContext context, String msg) {
  Toast.show(msg, context, duration: 3, gravity: Toast.BOTTOM);
}
