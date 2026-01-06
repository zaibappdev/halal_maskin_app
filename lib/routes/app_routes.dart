import 'package:halal_maskin_app/features/authentication/forget_password/forget_password_screen.dart';
import 'package:halal_maskin_app/features/authentication/password_changed/password_changed_screen.dart';
import 'package:halal_maskin_app/features/authentication/reset_password/reset_password_screens.dart';
import 'package:halal_maskin_app/features/authentication/sign_in/sign_in_screen.dart';
import 'package:halal_maskin_app/features/authentication/sign_up/sign_up_screen.dart';
import 'package:halal_maskin_app/features/authentication/welcome/welcome_screen.dart';
import 'package:halal_maskin_app/features/dashboard/dashboard.dart';
import 'package:halal_maskin_app/features/setting/profile/profile_screen.dart';
import 'package:halal_maskin_app/features/setting/setting_screen.dart';
import 'app_paths.dart';
import 'navigation_services.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationServices.navigatorKey,
    initialLocation: AppPaths.welcome,
    routes: [
      GoRoute(
        path: AppPaths.welcome,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const WelcomeScreen(), state),
      ),

      GoRoute(
        path: AppPaths.login,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const SignInScreen(), state),
      ),

      GoRoute(
        path: AppPaths.signUp,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const SignUpScreen(), state),
      ),

      GoRoute(
        path: AppPaths.forgotPassword,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const ForgetPasswordScreen(), state),
      ),

      GoRoute(
        path: AppPaths.resetPassword,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const ResetPasswordScreens(), state),
      ),

      GoRoute(
        path: AppPaths.passwordChanged,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const PasswordChangedScreen(), state),
      ),

      GoRoute(
        path: AppPaths.dashboard,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const Dashboard(), state),
      ),
      GoRoute(
        path: AppPaths.dashboard,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const Dashboard(), state),
      ),

      GoRoute(
        path: AppPaths.settings,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const SettingScreen(), state),
      ),

      GoRoute(
        path: AppPaths.profile,
        pageBuilder: (context, state) =>
            NavigationServices.instant(const ProfileScreen(), state),
      ),
    ],
  );
}

/*
      // GoRoute(
      //   path: AppPaths.splash,
      //   pageBuilder: (context, state) =>
      //       NavigationServices.fade(const SplashScreen(), state),
      // ),

      // GoRoute(
      //   path: AppPaths.home,
      //   pageBuilder: (context, state) =>
      //       NavigationServices.slideFromRight(const HomeScreen(), state),
      // ),

      // GoRoute(
      //   path: AppPaths.login,
      //   pageBuilder: (context, state) =>
      //       NavigationServices.slideFromBottom(const LoginScreen(), state),
      // ),

      // GoRoute(
      //   path: AppPaths.instant,
      //   pageBuilder: (context, state) =>
      //       NavigationServices.instant(const InstantScreen(), state),
      // ),
 */
