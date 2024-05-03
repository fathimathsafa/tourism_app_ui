import 'package:flutter/material.dart';

import 'Tourism/login.dart';
import 'Tourism/travel_details.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Travel_Login(),
    routes: {
      'detailpage' : (context) => const Travel_Details()
    },
  ));
}