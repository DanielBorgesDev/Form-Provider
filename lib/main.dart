import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/providers/user_provider.dart';
import 'package:provider_exemple/views/user_form_views.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserFormScreen(),
      ),
    );
  }
}
