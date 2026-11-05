import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateDivider extends StatelessWidget {
  const DateDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: const Color(0xFFE1F3FB), 
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          'Today',
          style: TextStyle(
            fontSize: 12.sp,
            color: const Color(0xFF54656F),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}