import 'package:flutter/material.dart';
import 'package:real_ecommerce_app/auth/login_page.dart';
import 'package:real_ecommerce_app/pages/home_page.dart';

import 'auth/register_page.dart';

void main () => runApp( const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
    );
  }
}