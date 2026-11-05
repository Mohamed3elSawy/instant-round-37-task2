import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import 'settings_model.dart';
import 'widgets/settings_profile_header.dart';
import 'widgets/settings_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. البروفايل
            const SettingsProfileHeader(),
            Divider(color: AppColors.divider, height: 1),

            // 2. قائمة الإعدادات
            ...settingsOptions.map((option) => SettingsTile(option: option)),

            // 3. الفوتر بتاع Meta
            SizedBox(height: 24.h),
            Text(
              'from',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.all_inclusive, size: 20.sp, color: Colors.grey[700]),
                SizedBox(width: 4.w),
                Text(
                  'Meta',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}