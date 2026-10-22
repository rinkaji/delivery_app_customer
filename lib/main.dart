import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pabili_customer/views/auth/auth_page.dart';
import 'package:pabili_customer/views/home/services_page.dart';

void main() {
  runApp(PabiliDelivery());
}

class PabiliDelivery extends StatelessWidget {
  const PabiliDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      debugShowCheckedModeBanner: false,
      title: 'Services Home',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Plus Jakarta Sans',
        scaffoldBackgroundColor: const Color(0xFFF9F9FF),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF5A623)),
      ),
      home: ServicesPage(),
    );
  }
}
