import 'package:bloc/bloc.dart';
import 'package:issue_dropdown/bloc/state.dart';

class Controller extends Cubit<ExampleState> {
  Controller() : super(const ExampleState());

  void populateList() {
    emit(
      state.copyWith(
        listB: ['a', 'b', 'c'],
      ),
    );
  }
}
