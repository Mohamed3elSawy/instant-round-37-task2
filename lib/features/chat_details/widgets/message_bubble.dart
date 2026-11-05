import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';
import '../chat_details_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isMe = message.isMe;
    final bubbleColor = isMe ? const Color(0xFFDCF8C6) : Colors.white;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          top: 2.h,
          bottom: 2.h,
          left: isMe ? 60.w : 8.w,
          right: isMe ? 8.w : 60.w,
        ),
        padding: EdgeInsets.only(
          top: 8.h,
          bottom: 8.h,
          left: 10.w,
          right: 30.w,
        ),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomLeft: isMe ? Radius.circular(8.r) : Radius.zero,
            bottomRight: isMe ? Radius.zero : Radius.circular(8.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Text(
                message.text,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message.time,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  if (isMe) ...[
                    SizedBox(width: 2.w),
                    Icon(Icons.done_all, size: 14.sp, color: const Color(0xFF53BDEB)),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}