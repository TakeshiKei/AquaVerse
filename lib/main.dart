import 'package:flutter/material.dart'; 
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart'; 
import 'splash_screen.dart'; 


Future<void> main() async{ 
  WidgetsFlutterBinding.ensureInitialized(); 
  
  await Supabase.initialize(
    url: 'https://ccuigpzseuhwietjcyyi.supabase.co', 
    anonKey: 'sb_publishable_ZiI7EyGG-DIgORaQw-B5xQ_0arL3iZD', 
  );
  
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: const SplashScreen()
    ); 
  }
}