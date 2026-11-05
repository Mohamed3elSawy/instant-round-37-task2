import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import 'chat_details_model.dart';
import 'widgets/chat_input_bar.dart';
import 'widgets/date_divider.dart';
import 'widgets/message_bubble.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leadingWidth: 70.w,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18.r,
              backgroundImage: const NetworkImage(
                'https://i.pravatar.cc/150?img=13',
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Reonsly',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(Icons.verified, size: 14.sp, color: Colors.white),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mockMessages.length + 1,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              itemBuilder: (context, index) {
                if (index == 2) {
                  return const DateDivider();
                }
                final msgIndex = index > 2 ? index - 1 : index;
                return MessageBubble(message: mockMessages[msgIndex]);
              },
            ),
          ),
          const ChatInputBar(),
        ],
      ),
    );
  }
}
