import 'package:flutter/material.dart';
import 'account_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: AccountPage(
        initialValue: 20,
      ),
    ),
  );
}
