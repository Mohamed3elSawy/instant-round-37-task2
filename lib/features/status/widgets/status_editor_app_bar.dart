import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusEditorAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StatusEditorAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, 
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.close, color: Colors.white),
        onPressed: () => Navigator.pop(context), 
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.text_fields, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.palette_outlined, color: Colors.white),
          onPressed: () {},
        ),
        SizedBox(width: 8.w),
      ],
    );
  }
}