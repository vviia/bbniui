import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBarImage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarImage({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // add image only
      title: Image.asset(
        'assets/images/logobni.png',
        fit: BoxFit.cover,
      ),
      toolbarHeight: 150,
      automaticallyImplyLeading: false,
    );
  }
}
