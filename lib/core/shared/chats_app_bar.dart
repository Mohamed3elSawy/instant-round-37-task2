import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_clone/features/chats/widgets/main_popup_menu.dart';
import '../constants/app_colors.dart';

class ChatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(100.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      titleSpacing: 0,
      title: Row(
        children: [
          SizedBox(width: 24.w),

          Text(
            'WhatsApp',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          onPressed: () {},
        ),
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        const MainPopupMenu(),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        indicatorWeight: 3,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontSize: 14.sp),
        tabs: const [
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
    );
  }
}
