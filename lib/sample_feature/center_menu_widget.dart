import 'package:flutter/material.dart';

import '../api/model.dart';
import 'menu_model.dart';

class CenterMenuWidget extends StatelessWidget {
  const CenterMenuWidget({
    Key? key,
    required this.list,
  }) : super(key: key);
  final List<MenuModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list.map((e) => RowWidget(model: e)).toList(),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, required this.model});
  final MenuModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
            color: model.color,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(mainAxisSize: MainAxisSize.max, children: [
            Image.asset(model.image),
            const SizedBox(width: 23.0),
            APIModel(
                onPressed: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                builder: ((context, child, callback, buttonState) {
                  return TextButton(
                    onPressed: callback,
                    child: child,
                  );
                }),
                child: Text(
                  model.text,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                )),
          ]),
        ),
      ),
    );
  }
}
