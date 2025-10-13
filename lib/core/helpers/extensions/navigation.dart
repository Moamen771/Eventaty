import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  /// Pushes a new page onto the navigation stack.
  Future<T?> push<T>(Widget page, {bool fullscreenDialog = false}) {
    return Navigator.of(this).push<T>(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  /// Replaces the current page with a new one.
  Future<T?> replace<T, TO>(Widget page, {bool fullscreenDialog = false}) {
    return Navigator.of(this).pushReplacement<T, TO>(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  /// Pushes a new page and removes all the previous routes.
  Future<T?> pushAndRemoveUntil<T>(Widget page) {
    return Navigator.of(this).pushAndRemoveUntil<T>(
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  /// Pops the top-most route off the navigation stack.
  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }

  /// Pops until the predicate returns true.
  void popUntil(RoutePredicate predicate) {
    Navigator.of(this).popUntil(predicate);
  }

  /// Pushes a named route onto the stack.
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  /// Replaces current route by pushing the named route and then disposing
  /// the previous one.
  Future<T?> replaceNamed<T, TO>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// Pushes a named route and removes all the previous routes.
  Future<T?> pushNamedAndRemoveUntil<T>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(newRouteName, predicate, arguments: arguments);
  }

  /// Shows a dialog with the given [Widget] as content.
  Future<T?> showDialogPage<T>({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    RouteSettings? routeSettings,
  }) {
    return showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: builder,
      routeSettings: routeSettings,
    );
  }

  /// Shows a bottom sheet with the given [Widget] as content.
  Future<T?> showBottomSheetPage<T>({
    required WidgetBuilder builder,
    bool isScrollControlled = false,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      builder: builder,
    );
  }
}
