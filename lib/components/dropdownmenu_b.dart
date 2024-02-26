import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:issue_dropdown/bloc/controller.dart';
import 'package:issue_dropdown/bloc/state.dart';

class DropdownmenuB extends StatelessWidget {
  const DropdownmenuB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Controller, ExampleState>(
      builder: (context, state) {
        final controller = context.read<Controller>();

        return DropdownMenu(
          enabled: controller.state.listB.isNotEmpty,
          width: 300,
          dropdownMenuEntries: buildDropDownMenuEntries(controller.state.listB),
          label: const Text("List B"),
          onSelected: (text) => {
            controller.populateList(),
          },
        );
      },
    );
  }
}

List<DropdownMenuEntry<String>> buildDropDownMenuEntries(List<String> listB) {
  final List<DropdownMenuEntry<String>> list = [];

  for (String option in listB) {
    list.add(DropdownMenuEntry(value: option, label: option));
  }

  return list;
}
