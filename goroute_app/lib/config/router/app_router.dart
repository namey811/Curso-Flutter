import 'package:go_router/go_router.dart';
import 'package:goroute_app/presentation/screens/animated/animated_screen.dart';
import 'package:goroute_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:goroute_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:goroute_app/presentation/screens/cards/cards_screen.dart';
import 'package:goroute_app/presentation/screens/home/home2_screen.dart';
import 'package:goroute_app/presentation/screens/home/home_screen.dart';
import 'package:goroute_app/presentation/screens/infinite_scroll/infinite_scroll_screen.dart';
import 'package:goroute_app/presentation/screens/progress/progress_screen.dart';
import 'package:goroute_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:goroute_app/presentation/screens/ui_controls/ui_controls_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home2Screen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
  ],
);