import 'package:chattingapp/_config/_colors.dart';
import 'package:flutter/cupertino.dart';

SizedBox defaultGap() {
  return const SizedBox(
    height: 10,
  );
}

Row dashedText(String text) {
  return Row(
    children: [
      Expanded(child: Container(color: accentColor, height: 1)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(child: Container(color: accentColor, height: 1)),
    ],
  );
}
