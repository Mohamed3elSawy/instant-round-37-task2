import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';
import '../chats_model.dart';

class ChatListTile extends StatelessWidget {
  final ChatModel chat;
  final VoidCallback onTap;

  const ChatListTile({super.key, required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 26.r,
              backgroundColor: Colors.grey[300],
              backgroundImage: chat.imageUrl != null 
                  ? NetworkImage(chat.imageUrl!) 
                  : null,
              child: chat.imageUrl == null 
                  ? Text(
                      chat.name[0].toUpperCase(),
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    )
                  : null,
            ),
            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        chat.name,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      if (chat.isVerified) ...[
                        SizedBox(width: 4.w),
                        Icon(Icons.verified, size: 16.sp, color: Colors.green),
                      ],
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      if (chat.isRead) ...[
                        Icon(Icons.done_all, size: 16.sp, color: const Color(0xFF53BDEB)),
                        SizedBox(width: 4.w),
                      ],
                      Expanded(
                        child: Text(
                          chat.lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: chat.unreadCount > 0 ? const Color(0xFF25D366) : AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 6.h),
                if (chat.unreadCount > 0)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: const BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${chat.unreadCount}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}