// ignore: duplicate_ignore
// ignore: must_be_immutable
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      S.of(context).categ_all_codes,
      S.of(context).categ_favorites,
      S.of(context).categ_car,
      S.of(context).categ_add
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 22.00,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? Colors.black : null,
                        border: Border.all(
                            width: 2.0, color: const Color(0xffebebeb)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(41.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}