import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationServices {
  // ---------- Global Navigator Key ----------
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // ---------- Safe Context Getter ----------
  static BuildContext? get _context => navigatorKey.currentContext;

  // ---------- Basic Navigation Methods ----------

  /// Instantly navigates to the specified route (no animation or stack).
  static void go(String routeName) {
    if (_context != null) _context!.go(routeName);
  }

  /// Pushes a new route onto the stack (keeps previous route).
  static void push(String routeName) {
    if (_context != null) _context!.push(routeName);
  }

  /// Replaces the current route with a new one (removes current from stack).
  static void replace(String routeName) {
    if (_context != null) _context!.pushReplacement(routeName);
  }

  /// Pops the current route from the stack.
  static void pop() {
    navigatorKey.currentState?.pop();
  }

  // ---------- Transitions (Reusable Animations) ----------
  static const _duration = Duration(milliseconds: 300);

  /// Generic slide transition (base for all directions)
  static CustomTransitionPage _slideTransition({
    required Widget child,
    required GoRouterState state,
    required Offset beginOffset,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: _duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween<Offset>(begin: beginOffset, end: Offset.zero);
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  /// Slide Right → Left
  static CustomTransitionPage slideFromRight(
    Widget child,
    GoRouterState state,
  ) => _slideTransition(
    child: child,
    state: state,
    beginOffset: const Offset(1, 0),
  );

  /// Slide Left → Right
  static CustomTransitionPage slideFromLeft(
    Widget child,
    GoRouterState state,
  ) => _slideTransition(
    child: child,
    state: state,
    beginOffset: const Offset(-1, 0),
  );

  /// Slide Bottom → Top
  static CustomTransitionPage slideFromBottom(
    Widget child,
    GoRouterState state,
  ) => _slideTransition(
    child: child,
    state: state,
    beginOffset: const Offset(0, 1),
  );

  /// Slide Top → Bottom
  static CustomTransitionPage slideFromTop(Widget child, GoRouterState state) =>
      _slideTransition(
        child: child,
        state: state,
        beginOffset: const Offset(0, -1),
      );

  /// Fade Transition
  static CustomTransitionPage fade(Widget child, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: _duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  /// Instant (no animation)
  static NoTransitionPage instant(Widget child, GoRouterState state) {
    return NoTransitionPage(key: state.pageKey, child: child);
  }
}

/*
       ➤ Navigate instantly (replace screen)
       NavigationServices.go('/home');

       ➤ Push a new screen
       NavigationServices.push('/login');

       ➤ Replace current route
       NavigationServices.replace('/splash');

       ➤ Pop current route
       NavigationServices.pop();
*/
