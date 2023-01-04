// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'center_menu_widget.dart';
import 'menu_model.dart';

class CentralMenu extends StatelessWidget {
  const CentralMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuModel> list = [
      MenuModel('assets/images/Group374.png', S.of(context).btn_my_car,
          const Color(0x204385F6)),
      MenuModel('assets/images/Group374a.png', S.of(context).btn_my_child,
          const Color(0x20CDC1FF)),
      MenuModel('assets/images/Group374gr.png', S.of(context).btn_my_flat,
          const Color(0xffE4F9E4)),
      MenuModel('assets/images/Group374b.png', S.of(context).btn_my_wallet,
          const Color(0x2071BBFF)),
      MenuModel('assets/images/Group374t.png', S.of(context).btn_my_telephone,
          const Color(0x2077EDD9)),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: SizedBox(
        height: 430,
        child: ListView(children: [
          Column(
            children: [
              const SizedBox(height: 42),
              CenterMenuWidget(list: list),
            ],
          ),
        ]),
      ),
    );
  }
}
