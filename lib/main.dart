import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mad_monika_todo_list_app/view_models/app_view_model.dart';
import 'package:mad_monika_todo_list_app/views/task_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue, // Sets a default primary theme color
      ),
      home: const TaskPage(),
    );
  }
}
