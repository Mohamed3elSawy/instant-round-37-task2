import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_clone/features/status/status_model.dart';
import '../../../../core/constants/app_colors.dart';

class StatusTile extends StatelessWidget {
  final StatusModel status;

  const StatusTile({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        children: [
          Container(
            width: 54.r,
            height: 54.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.accent, // الأخضر الفاتح
                width: 2.5,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.r),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: status.imageUrl != null
                    ? NetworkImage(status.imageUrl!)
                    : null,
                child: status.imageUrl == null
                    ? Icon(Icons.person, color: Colors.grey[700])
                    : null,
              ),
            ),
          ),
          SizedBox(width: 14.w),

          // الاسم والوقت
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      status.name,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    if (status.isVerified) ...[
                      SizedBox(width: 4.w),
                      Icon(Icons.verified, size: 16.sp, color: Colors.green),
                    ],
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  status.time,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}