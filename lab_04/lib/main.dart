import 'package:flutter/material.dart';
import 'choc_muffin.dart';
import 'ice_americano.dart';
import 'ice_latte.dart';
import 'menu.dart';
import 'vnl_muffin.dart';

void main() => runApp(const Lab04());

class Lab04 extends StatelessWidget {
  const Lab04({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuScreen(),
      routes: {
        'menu': (context) => const MenuScreen(),
        'ice_americano': (context) => const IceAmericanoScreen(),
        'ice_latte': (context) => const IceLatteScreen(),
        'choc_muffin': (context) => const ChocMuffinScreen(),
        'vnl_muffin': (context) => const VnlMuffinScreen(),
      },
    );
  }
}
