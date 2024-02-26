import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:issue_dropdown/bloc/controller.dart';
import 'package:issue_dropdown/bloc/state.dart';

class DropdownmenuA extends StatelessWidget {
  const DropdownmenuA({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Controller, ExampleState>(
      builder: (context, state) {
        final controller = context.read<Controller>();

        return DropdownMenu(
          width: 300,
          dropdownMenuEntries: buildDropDownMenuEntries(controller.state.listA),
          label: const Text("List A"),
          onSelected: (text) => {
            controller.populateList(),
          },
        );
      },
    );
  }
}

List<DropdownMenuEntry<String>> buildDropDownMenuEntries(List<String> listA) {
  final List<DropdownMenuEntry<String>> list = [];

  for (String option in listA) {
    list.add(DropdownMenuEntry(value: option, label: option));
  }

  return list;
}
