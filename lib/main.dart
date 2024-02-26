import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:issue_dropdown/bloc/controller.dart';
import 'package:issue_dropdown/components/dropdownmenu_a.dart';

import 'components/dropdownmenu_b.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDownMenu Issue',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => Controller(),
        child: const Scaffold(
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownmenuA(),
                  SizedBox(
                    height: 24,
                  ),
                  DropdownmenuB(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
