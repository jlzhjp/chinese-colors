import 'package:chinese_colors/search_page.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(
    GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: const MyApp()),
  );
}

class Route {
  Icon icon;
  String title;
  Widget page;
  Function? onEnter;
  Function? onLeave;

  Route({
    required this.icon,
    required this.title,
    required this.page,
    this.onEnter,
    this.onLeave,
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) =>
          MaterialApp(
        title: '中国传统色',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightDynamic,
          fontFamily: 'LXGWWenKai',
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkDynamic,
          brightness: Brightness.dark,
          fontFamily: 'LXGWWenKai',
        ),
        home: Router(routes: [
          Route(
            icon: const Icon(Icons.home_rounded),
            title: "主页",
            page: const HomePage(),
          ),
          Route(
            icon: const Icon(Icons.search_rounded),
            title: "搜索",
            page: const SearchPage(),
          )
        ]),
      ),
    );
  }
}

class Router extends ConsumerStatefulWidget {
  final List<Route> routes;

  const Router({super.key, required this.routes});

  @override
  ConsumerState<Router> createState() => _RouterState();
}

class _RouterState extends ConsumerState<Router> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("中国传统色")),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [...widget.routes.map((route) => route.page)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          ...widget.routes.map((route) => BottomNavigationBarItem(
                icon: route.icon,
                label: route.title,
                tooltip: route.title,
              ))
        ],
        onTap: (value) {
          widget.routes[_currentIndex].onLeave?.call();
          setState(() => _currentIndex = value);
          widget.routes[_currentIndex].onEnter?.call();
        },
      ),
    );
  }
}
