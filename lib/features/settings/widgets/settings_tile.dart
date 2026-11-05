import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';
import '../settings_model.dart';

class SettingsTile extends StatelessWidget {
  final SettingsOption option;

  const SettingsTile({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      leading: Icon(option.icon, color: AppColors.textSecondary, size: 24.sp),
      title: Text(
        option.title,
        style: TextStyle(
          fontSize: 16.sp,
          color: AppColors.textPrimary,
        ),
      ),
      subtitle: option.subtitle != null
          ? Text(
              option.subtitle!,
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColors.textSecondary,
              ),
            )
          : null,
      onTap: () {},
    );
  }
}