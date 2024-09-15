import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:mindsetfinalprojectecommerce/features/splash/views/screens/splash_screen.dart';

import 'core/config/theme/dark_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindset Ecommerce',
      builder: BotToastInit(),
      themeMode: ThemeMode.light,
      theme: LightTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
