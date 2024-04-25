import 'package:farm_fresh/providers/cart_provider.dart';
import 'package:farm_fresh/providers/products_provider.dart';
import 'package:farm_fresh/screens/auth/forgot_password.dart';
import 'package:farm_fresh/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farm_fresh/providers/theme_provider.dart';
import 'package:farm_fresh/root_screen.dart';
import 'package:farm_fresh/screens/inner_screen/product_details.dart';
import 'package:farm_fresh/screens/inner_screen/viewed_recently.dart';

import 'consts/theme_data.dart';
import 'screens/auth/login.dart';
import 'screens/auth/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        }),
        ChangeNotifierProvider(create: (_) {
          return ProductsProvider();
        }),
        ChangeNotifierProvider(create: (_) {
          return CartProvider();
        }),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Farm Fresh',
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),

          home: const RootScreen(),
          // home: const LoginScreen(),

            routes: {
            RootScreen.routeName: (context) => const RootScreen(),
            ProductDetailsScreen.routName: (context) =>
                const ProductDetailsScreen(),
            ViewedRecentlyScreen.routName: (context) =>
                const ViewedRecentlyScreen(),
            RegisterScreen.routName: (context) => const RegisterScreen(),
            LoginScreen.routeName: (context) => const LoginScreen(),
            ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
            SearchScreen.routeName: (context) => const SearchScreen(),
          },
        );
      }),
    );
  }
}
