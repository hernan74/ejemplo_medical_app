import 'package:ejemplo_medical_app/src/pages/home_page.dart';
import 'package:ejemplo_medical_app/src/provider/fecha_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FechaProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medical app',
        initialRoute: '/',
        routes: {'/': (_) => HomePage()},
      ),
    );
  }
}
