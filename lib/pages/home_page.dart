import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final iconDark = const Icon(Icons.dark_mode);
  final iconLight = const Icon(Icons.light_mode);
  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();

  bool changeTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: changeTheme ? dark : light,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: changeTheme? Colors.black : Colors.black12,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  changeTheme = !changeTheme;
                });
              },
              icon: changeTheme ? iconDark : iconLight,
            ),
          ],
        ),
      ),
    );
  }
}
