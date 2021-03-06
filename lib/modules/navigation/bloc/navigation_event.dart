part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class AddRoute extends NavigationEvent {
  final String type = "add";
  final Widget page;
  final String name;
  final String key;
  final Object arguments;
  final bool fullscreenDialog;
  final bool maintainState;

  AddRoute({
    @required this.page,
    @required this.name,
    this.key,
    this.arguments,
    this.fullscreenDialog = false,
    this.maintainState = true,
  });
}

class PopRoute extends NavigationEvent {
  final String type = "pop";
}

class CleanRoutes extends NavigationEvent {
  final String type = "clean";
}

class RestoreRoutes extends NavigationEvent {
  final String type = "restore";
}

class ChangeDefaultRoute extends NavigationEvent {
  final String type = "changeDefaultRoute";
  final List<Page<dynamic>> pages;

  ChangeDefaultRoute(Page<dynamic> defaultRoute) : pages = [defaultRoute];
}

class ReplaceAllByRoutes extends NavigationEvent {
  final String type = "replaceAllBy";
  final Widget page;
  final String name;
  final String key;
  final Object arguments;
  final bool fullscreenDialog;
  final bool maintainState;

  ReplaceAllByRoutes({
    @required this.page,
    @required this.name,
    this.key,
    this.arguments,
    this.fullscreenDialog = false,
    this.maintainState = true,
  });
}
