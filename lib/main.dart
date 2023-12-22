import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/screens/definition_screen.dart';
import 'package:sailing_rules/screens/home_screen.dart';
import 'package:sailing_rules/screens/results_screen.dart';
import 'package:sailing_rules/screens/settings_screen.dart';
import 'package:sailing_rules/utilities/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'definition_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const DefinitionScreen();
          },
        ),
        GoRoute(
          path: 'results_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const ResultsScreen();
          },
        ),
        GoRoute(
          path: 'settings_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: appTheme.copyWith(
        textTheme: appTheme.textTheme.copyWith(
          bodyLarge: appTheme.textTheme.bodyLarge?.copyWith(
            fontSize: calculateAdjustedFontSize(24.0, context),
          ),
        ),
      ),
    );
  }
}
