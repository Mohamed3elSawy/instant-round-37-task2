import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/constants/app_colors.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(const WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  const WhatsAppCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'WhatsApp Clone',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.textOnPrimary,
              elevation: 0,
            ),
          ),
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}