import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'bottom_menu.dart';
import 'categories.dart';
import 'central_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFEFC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).app_title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: SizedBox(
                      width: 24,
                      height: 27,
                      child: Stack(children: [
                        Image.asset('assets/icons/group69.png'),
                        Container(
                          width: 24,
                          height: 27,
                          margin: const EdgeInsets.only(top: 2),
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 8,
                            height: 8,
                            child: Image.asset('assets/icons/Ellipse18.png'),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 37.0),
            Categories(),
            const CentralMenu(),
            const BottomMenu(),
          ],
        ),
      ),
    );
  }
}
