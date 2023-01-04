import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
              color: Color(0xff211F1F),
              borderRadius: BorderRadius.only(
                  topLeft: (Radius.circular(20)),
                  topRight: (Radius.circular(20)))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/icons/Vector.png'),
              Image.asset('assets/icons/Frame23.png'),
              Image.asset('assets/icons/VectorUsr.png'),
            ],
          ),
        ),
      ),
    );
  }
}
