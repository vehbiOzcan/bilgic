import 'package:flutter/material.dart';

class BilgicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
 

  BilgicAppBar({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blue[800],
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}