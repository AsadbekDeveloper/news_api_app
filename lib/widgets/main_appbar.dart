import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_button.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
          bottom: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircularIconButton(
              icon: FontAwesomeIcons.bars,
            ),
            SizedBox(
              width: size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircularIconButton(
                    icon: FontAwesomeIcons.bell,
                  ),
                  CircularIconButton(
                    icon: FontAwesomeIcons.magnifyingGlass,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/50'),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
