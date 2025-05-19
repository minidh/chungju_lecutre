import 'package:flutter/material.dart';
import 'package:flutter_project/signup_page.dart';
import 'package:flutter_project/todo_local_page.dart';
import 'package:flutter_project/todo_remote_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_project/home_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'login_page.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://pqcietwlrhjyzytlhuvv.supabase.co/",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxY2lldHdscmhqeXp5dGxodXZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc2MTkxNjQsImV4cCI6MjA2MzE5NTE2NH0.9WJwlW6_oSH9vowdCnDvSHrjrJIrMUqjWIzXqMA_5wY",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'To-Do 프로젝트',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes: {
          '/': (context) => const HomePage(),
          '/todo-local': (context) => const TodoLocalPage(),
          '/todo-remote': (context) => const TodoRemotePage(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignUpPage()
        }
    );
  }
}