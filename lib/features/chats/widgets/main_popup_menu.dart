import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:whats_app_clone/core/routing/app_routes.dart';

import '../../../core/constants/app_colors.dart';

class MainPopupMenu extends StatelessWidget {
  const MainPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      color: AppColors.tealAction,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      onSelected: (value) {
        if (value == 'starred') {
          context.push(AppRoutes.starred);
        }
        if (value == 'settings') {
          context.push(AppRoutes.settings);
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          _buildItem('New Contact'),
          _buildItem('New Group'),
          _buildItem('Linked devices'),
          _buildItem('Starred Messages', value: 'starred'),
          _buildItem('Settings', value: 'settings'),
        ];
      },
    );
  }

  PopupMenuItem<String> _buildItem(String text, {String? value}) {
    return PopupMenuItem<String>(
      value: value ?? text,
      height: 40.h,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
