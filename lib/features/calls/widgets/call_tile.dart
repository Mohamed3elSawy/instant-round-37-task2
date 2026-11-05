import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';
import '../calls_model.dart';

class CallTile extends StatelessWidget {
  final CallModel call;

  const CallTile({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      leading: CircleAvatar(
        radius: 26.r,
        backgroundColor: Colors.grey[300],
        backgroundImage: call.imageUrl != null ? NetworkImage(call.imageUrl!) : null,
        child: call.imageUrl == null
            ? Icon(Icons.person, color: Colors.grey[700])
            : null,
      ),
      title: Row(
        children: [
          Text(
            call.name,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: call.isMissed ? Colors.red : AppColors.textPrimary,
            ),
          ),
          if (call.isVerified) ...[
            SizedBox(width: 4.w),
            Icon(Icons.verified, size: 16.sp, color: Colors.green),
          ],
        ],
      ),
      subtitle: Row(
        children: [
          Icon(
            call.isMissed ? Icons.call_missed : Icons.call_made,
            size: 16.sp,
            color: call.isMissed ? Colors.red : const Color(0xFF25D366), // أخضر
          ),
          SizedBox(width: 4.w),
          Text(
            call.time,
            style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
      trailing: Icon(
        call.isVideo ? Icons.videocam : Icons.call,
        color: AppColors.primary,
        size: 26.sp,
      ),
    );
  }
}