import 'package:flutter/material.dart';

class SettingsOption {
  final String title;
  final String? subtitle;
  final IconData icon;

  const SettingsOption({
    required this.title,
    this.subtitle,
    required this.icon,
  });
}

const List<SettingsOption> settingsOptions = [
  SettingsOption(
    title: 'Account',
    subtitle: 'Security notifications, change number',
    icon: Icons.vpn_key_outlined,
  ),
  SettingsOption(
    title: 'Privacy',
    subtitle: 'Block contacts, disappearing messages',
    icon: Icons.lock_outline,
  ),
  SettingsOption(
    title: 'Avatar',
    subtitle: 'Create, edit, profile photo',
    icon: Icons.person_outline,
  ),
  SettingsOption(
    title: 'Notifications',
    subtitle: 'Message, group & call tones',
    icon: Icons.notifications_none,
  ),
  SettingsOption(
    title: 'Storage',
    subtitle: 'Network usage, auto-download',
    icon: Icons.pie_chart_outline,
  ),
  SettingsOption(
    title: 'App language',
    subtitle: 'English (device\'s language)',
    icon: Icons.language,
  ),
  SettingsOption(
    title: 'Help',
    subtitle: 'Help centre, contact us, privacy policy',
    icon: Icons.help_outline,
  ),
  SettingsOption(
    title: 'Invite a friend',
    icon: Icons.people_outline,
  ),
];