import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import 'widgets/status_editor_app_bar.dart';

class TextStatusScreen extends StatelessWidget {
  const TextStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE29C94), 
      
      appBar: const StatusEditorAppBar(),
      
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: TextField(
            autofocus: true,
            maxLines: null, 
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Type a status',
              hintStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.4), 
              ),
            ),
          ),
        ),
      ),
    );
  }
}