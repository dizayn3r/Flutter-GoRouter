import 'package:flutter_go_router/routes/app_routes_name.dart';
import 'package:flutter_go_router/ui/screens/categories/categories_screen.dart';
import 'package:flutter_go_router/ui/screens/home/home_screen.dart';
import 'package:flutter_go_router/ui/screens/login/login_screen.dart';
import 'package:flutter_go_router/ui/screens/product_details/product_details_screen.dart';
import 'package:flutter_go_router/ui/screens/products/products_screen.dart';
import 'package:flutter_go_router/ui/screens/register/register_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/screens/intro/intro_screen.dart';
import '../ui/screens/splash/splash_screen.dart';

final isLoggedIn = false;

class AppRoutes {
  /// The route configuration.
  static GoRouter router = GoRouter(
    initialLocation: '/',
    // errorBuilder: (context, state) => ErrorScreen(
    //   errorTitleKey: 'pageNotFound',
    //   bottomTextKey: 'toHomePage',
    //   onButtonClick: () => context.replace('/'),
    // ),
    // redirect: (context, state) {
    //   if (isLoggedIn) {
    //     return "/home";
    //   }
    //   return "/intro";
    // },
    routes: [
      GoRoute(
        name: RouteName.splash,
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: RouteName.intro,
        path: '/intro',
        builder: (context, state) {
          return const IntroScreen();
        },
      ),
      GoRoute(
        name: RouteName.login,
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        name: RouteName.register,
        path: '/register',
        builder: (context, state) {
          return const RegisterScreen();
        },
      ),
      GoRoute(
        name: RouteName.dashboard,
        path: '/home',
        builder: (context, state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            name: RouteName.productCategories,
            path: 'categories',
            builder: (context, state) {
              return const CategoryScreen();
            },
          ),
          GoRoute(
            name: RouteName.products,
            path: 'products',
            builder: (context, state) {
              return const ProductScreen();
            },
            routes: <RouteBase>[
              GoRoute(
                name: RouteName.productDetails,
                path: ':id',
                builder: (context, state) {
                  return ProductDetailsScreen(
                      path: state.matchedLocation ?? "",
                      id: state.pathParameters['id'] ?? "0");
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
