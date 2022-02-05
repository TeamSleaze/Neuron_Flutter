import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

// ------------------------ Imports ------------------------ //
import 'pages/ProjectSelectionScreen.dart';
import 'pages/BoardScreen.dart';
// ------------------------ Imports ------------------------ //

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    setWindowMinSize(const Size(1280, 1080));
    setWindowMaxSize(Size.infinite);
  }

  runApp(const ManagmentApp());
}

class ManagmentApp extends StatelessWidget {
  const ManagmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Managment App',
      theme: ThemeData.dark(),
      home: const BoardScreen(),
    );
  }
}
