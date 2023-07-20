import 'package:flutter/material.dart';
import 'package:paint/provider/alu_provider.dart';
import 'package:provider/provider.dart';
import 'landing_screen/landing_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ALU_Provider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen(),
    );
  }
}
// material app e Scafold ???
