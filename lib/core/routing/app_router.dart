import 'package:go_router/go_router.dart';
import 'package:whats_app_clone/features/chat_details/chat_details_screen.dart';
import 'package:whats_app_clone/features/chats/chats_screen.dart';
import 'package:whats_app_clone/features/starred_screen/starred_screen.dart';
import 'package:whats_app_clone/features/status/text_status_screen.dart';
import 'app_routes.dart';
import '../../features/settings/settings_screen.dart';


class AppRouter {

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.chat,
    routes: [
      GoRoute(
        path: AppRoutes.chat,
        name: AppRoutes.chat,
        builder: (context, state) => const ChatsScreen(),
      ),
      GoRoute(
  path: AppRoutes.starred,
  name: AppRoutes.starred,
  builder: (context, state) => const StarredScreen(),
),
      GoRoute(
        
  path: AppRoutes.textStatus,
  name: AppRoutes.textStatus,
  builder: (context, state) => const TextStatusScreen(),
      ),
      GoRoute(
  path: AppRoutes.settings,
  name: AppRoutes.settings,
  builder: (context, state) => const SettingsScreen(),
),

GoRoute(
  path: AppRoutes.chatDetails,
  name: AppRoutes.chatDetails,
  builder: (context, state) => const ChatDetailsScreen(),
),
    ],
  );
}