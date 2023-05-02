// GoRouter configuration
import 'package:bookly_app/Features/home/presentation/views/book_view_deatil.dart';
import 'package:bookly_app/Features/home/presentation/views/home_page.dart';
import 'package:bookly_app/Features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
