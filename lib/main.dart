import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/repositories/rules_data_repository.dart';
import 'package:sailing_rules/screens/definition_screen.dart';
import 'package:sailing_rules/screens/home_screen.dart';
import 'package:sailing_rules/screens/results_screen.dart';
import 'package:sailing_rules/screens/settings_screen.dart';
import 'package:sailing_rules/utilities/app_theme_data_class.dart';
import 'package:sailing_rules/utilities/theme.dart';

import 'blocs/data/rules_data_cubit.dart';
import 'blocs/selection/selection_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
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
        // GoRoute(
        //   path: 'results_screen_two',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const ResultsScreenTwo();
        //   },
        // ),
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
    return RepositoryProvider(
      create: (context) => RulesDataRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SelectionCubit>(
            create: (context) => SelectionCubit(),
          ),
          BlocProvider<RulesDataCubit>(
            create: (context) => RulesDataCubit(
              rulesDataRepository: RulesDataRepository(),
              selectionCubit: context.read<SelectionCubit>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
          theme: AppThemeDataClass().getAppTheme(context),
        ),
      ),
    );
  }
}
