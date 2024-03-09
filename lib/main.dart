import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management1/Screens/count_display_screen1.dart';
import 'package:state_management1/Screens/home_paget.dart';
import 'package:state_management1/provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CounterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors. teal
            )
        ),
        home:   const CountDisplayScreen(),
      ),
    );

  }
}