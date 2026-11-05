import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:whats_app_clone/core/routing/app_routes.dart';
import 'package:whats_app_clone/features/status/status_model.dart';

import '../../core/constants/app_colors.dart';
import 'widgets/status_tile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // ─── قائمة الحالات ───
          ListView(
            padding: EdgeInsets.only(bottom: 100.h), // مساحة للزرارين اللي تحت
            children: [
              // 1. الـ My Status (ثابت فوق)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 28.r,
                      backgroundImage: const NetworkImage('https://i.pravatar.cc/150?img=11'),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.accent,
                      ),
                      child: const Icon(Icons.add, color: Colors.white, size: 18),
                    ),
                  ],
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'Tap to add status updates',
                  style: TextStyle(fontSize: 13.sp, color: AppColors.textSecondary),
                ),
              ),

              // 2. عنوان "Recent Updates"
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 8.h),
                child: Text(
                  'Recent Updates',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),

              // 3. قائمة الحالات
              ...mockStatuses.map((status) => StatusTile(status: status)),
            ],
          ),

          Positioned(
            bottom: 20.h,
            right: 20.w,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: 'edit_status',
                  onPressed: () {
                    context.push(AppRoutes.textStatus); 
                  },
                  backgroundColor: AppColors.primary,
                  child: const Icon(Icons.edit, color: Colors.white),
                ),
                SizedBox(height: 12.h),
                FloatingActionButton(
                  heroTag: 'camera_status',
                  onPressed: () {},
                  backgroundColor: AppColors.primary,
                  child: const Icon(Icons.camera_alt, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}