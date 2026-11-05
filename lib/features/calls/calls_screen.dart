import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import 'calls_model.dart';
import 'widgets/call_tile.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(bottom: 80.h),
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                leading: CircleAvatar(
                  radius: 24.r,
                  backgroundColor: AppColors.primary,
                  child: const Icon(Icons.link, color: Colors.white),
                ),
                title: Text(
                  'Create call link',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                subtitle: Text(
                  'Share a link for your WhatsApp call',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 8.h),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),

              ...mockCalls.map((call) => CallTile(call: call)),
            ],
          ),

          Positioned(
            bottom: 20.h,
            right: 20.w,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.primary,
              child: const Icon(Icons.add_call, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}