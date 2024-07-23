import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/pages/comercial.dart';
import 'package:app_t_v_1/pages/login.dart';
import 'package:app_t_v_1/pages/portada.dart';
import 'package:app_t_v_1/pages/profile.dart';
import 'package:app_t_v_1/pages/public_product.dart';
import 'package:app_t_v_1/pages/register.dart';
import 'package:app_t_v_1/pages/register_product.dart';
import 'package:app_t_v_1/pages/sell_product.dart';
import 'package:app_t_v_1/structure/moleculas/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: temaApp,
      routerConfig: GoRouter(
        initialLocation: '/Menu',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Portada(),
          ),
          GoRoute(
            path: '/Login',
            builder: (context, state) => const Login(),
          ),
          GoRoute(
            path: '/register',
            builder: (context, state) => const Register(),
          ),
          GoRoute(
            path: '/Menu',
            builder: (context, state) => const AppBarWidgetState(),
          ),
          GoRoute(
            path: '/publicProduct',
            builder: (context, state) => const PublicProduct(),
          ),
          GoRoute(
            path: '/comercial',
            builder: (context, state) => const Comercial(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const Profile(),
          ),
          GoRoute(
            path: '/registerProduct',
            builder: (context, state) => const RegisterProduct(),
          ),
          GoRoute(
            path: '/sellProduct',
            builder: (context, state) => const SellProduct(),
          )
        ],
      ),
    );
  }
}
