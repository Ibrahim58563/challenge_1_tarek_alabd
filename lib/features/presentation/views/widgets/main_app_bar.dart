import 'package:flutter/material.dart';

import '../../../../core/components.dart';
import '../home_view_body.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mainCircleAvatar(Icons.menu_rounded),
        Row(
          children: [
            mainCircleAvatar(Icons.search),
            mainCircleAvatar(Icons.notifications_none_rounded),
          ],
        ),
      ],
    );
  }
}
