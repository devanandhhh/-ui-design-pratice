import 'package:flutter/material.dart';

Widget profile({
  required IconData icon1st,
  required String data,
  IconData? icon2nd,
}) {
  return ListTile(
    leading: Icon(icon1st),
    title: Text(data),
    trailing: Icon(icon2nd),
  );
}
