import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app_clone/features/calls/calls_screen.dart';
import 'package:whats_app_clone/features/status/status_screen.dart';
import '../../core/constants/app_colors.dart';
import '../../core/shared/chats_app_bar.dart';
import 'widgets/chats_list.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: const ChatsAppBar(),
        body: TabBarView(
          children: [
            ChatsList().animate().fadeIn().slideY(begin: 0.2),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
