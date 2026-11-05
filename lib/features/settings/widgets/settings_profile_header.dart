import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';

class SettingsProfileHeader extends StatelessWidget {
  const SettingsProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32.r,
            backgroundImage: const NetworkImage('https://i.pravatar.cc/150?img=11'),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Leo Das',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(Icons.verified, size: 16.sp, color: Colors.green),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  'POC 👑🥷',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.qr_code_2, color: AppColors.primary, size: 26.sp),
          SizedBox(width: 16.w),
          Icon(Icons.check_circle_outline, color: AppColors.primary, size: 26.sp),
        ],
      ),
    );
  }
}