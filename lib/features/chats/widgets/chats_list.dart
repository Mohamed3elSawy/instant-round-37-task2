import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:whats_app_clone/core/routing/app_routes.dart';
import '../../../core/constants/app_colors.dart';
import '../chats_model.dart';
import 'chat_list_tile.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: mockChats.length,
        separatorBuilder: (context, index) =>
            Divider(height: 1, color: AppColors.divider, indent: 80.w),
        itemBuilder: (context, index) {
          return ChatListTile(
            chat: mockChats[index],
            onTap: () {
              context.push(AppRoutes.chatDetails);
            },
          ).animate(delay: (index * 80).ms).fadeIn().slideY(begin: 0.2);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.accent,
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
