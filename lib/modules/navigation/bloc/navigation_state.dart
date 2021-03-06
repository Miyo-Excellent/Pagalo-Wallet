part of 'navigation_bloc.dart';

class NavigationState {
  Page<dynamic> _defaultRoute;

  List<Page<dynamic>> _pages = [];

  NavigationState({
    @required dynamic event,
    Page<dynamic> defaultRoute,
  }) {
    if (defaultRoute is Page) _defaultRoute = defaultRoute;

    if (event != null && event.type is String && event.type.isNotEmpty) {
      final bool hasNewPage =
          event.page is Widget && event.name is String && event.name.isNotEmpty;

      if (event.type == "add") {
        if (hasNewPage)
          _add(
            page: event.page,
            name: event.name,
            key: event.key,
            maintainState: event.maintainState,
            fullscreenDialog: event.fullscreenDialog,
            arguments: event.arguments,
          );
      } else if (event.type == "changeDefaultRoute") {
        _changeDefaultRoute(
          page: event.page,
          name: event.name,
          key: event.key,
          maintainState: event.maintainState,
          fullscreenDialog: event.fullscreenDialog,
          arguments: event.arguments,
        );
      } else if (event.type == "pop") {
        _pop();
      } else if (event.type == "clean") {
        _clean();
      } else if (event.type == "replaceAllBy") {
        if (hasNewPage)
          _replaceAllBy(
            page: event.page,
            name: event.name,
            key: event.key,
            maintainState: event.maintainState,
            fullscreenDialog: event.fullscreenDialog,
            arguments: event.arguments,
          );
      } else if (event.type == "restore") {
        _restore();
      }
    }
    if (defaultRoute is Page<dynamic>) {
      _pages.add(defaultRoute);
    }
  }

  _add({
    @required Widget page,
    @required String name,
    String key,
    Object arguments,
    bool fullscreenDialog = false,
    bool maintainState = true,
  }) =>
      _pages.add(
        MaterialPage(
          name: name,
          arguments: arguments,
          key: ValueKey(key ?? name),
          child: page,
          fullscreenDialog: fullscreenDialog,
          maintainState: maintainState,
        ),
      );

  _pop() => _pages.removeLast();

  _clean() => _pages = [_pages.last];

  _restore() => _pages = [
        if (defaultRoute is Page<dynamic>) defaultRoute,
      ];

  _replaceAllBy({
    @required Widget page,
    @required String name,
    String key,
    Object arguments,
    bool fullscreenDialog = false,
    bool maintainState = true,
  }) {
    _defaultRoute = MaterialPage(
      name: name,
      arguments: arguments,
      key: ValueKey(key ?? name),
      child: page,
      fullscreenDialog: fullscreenDialog,
      maintainState: maintainState,
    );

    _pages = [_defaultRoute];
  }

  _changeDefaultRoute({
    @required Widget page,
    @required String name,
    String key,
    Object arguments,
    bool fullscreenDialog = false,
    bool maintainState = true,
  }) =>
      _pages = [
        MaterialPage(
          name: name,
          arguments: arguments,
          key: ValueKey(key ?? name),
          child: page,
          fullscreenDialog: fullscreenDialog,
          maintainState: maintainState,
        )
      ];

  List<Page<dynamic>> get pages => _pages;

  Page<dynamic> get currentRoute => _pages.last;

  Page<dynamic> get defaultRoute => _defaultRoute;
}
