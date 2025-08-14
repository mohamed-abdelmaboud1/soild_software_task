import 'package:go_router/go_router.dart';
import 'package:soild_software_task/features/home/presentation/views/next_page_view.dart';
import 'package:soild_software_task/features/home/presentation/widgets/home_view.dart';
import 'package:soild_software_task/features/splash/views/splash_view.dart';

class AppRouter {
  static const String splash = '/';
  static const String home = '/home';
  //nextPage
  static const String nextPage = '/next';
  static final GoRouter router = GoRouter(
    initialLocation: AppRouter.splash,

    routes: [
      GoRoute(
        path: AppRouter.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouter.nextPage,

        builder: (context, state) => const NextPageView(),
      ),
    ],
  );
}
