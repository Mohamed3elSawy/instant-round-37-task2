import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      color: const Color(0xFFF0F0F0),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  children: [
                    Icon(Icons.emoji_emotions_outlined, color: AppColors.textSecondary, size: 26.sp),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.attach_file, color: AppColors.textSecondary, size: 24.sp),
                    SizedBox(width: 12.w),
                    Icon(Icons.camera_alt_outlined, color: AppColors.textSecondary, size: 24.sp),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              padding: EdgeInsets.all(10.r),
              decoration: const BoxDecoration(
                color: Color(0xFF00A884),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.mic, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}