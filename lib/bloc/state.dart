import 'package:equatable/equatable.dart';

class ExampleState extends Equatable {
  final List<String> listA;
  final List<String> listB;

  const ExampleState({
    this.listA = const ['a'],
    this.listB = const [],
  });

  ExampleState copyWith({
    List<String>? listA,
    List<String>? listB,
  }) {
    return ExampleState(
      listA: listA ?? this.listA,
      listB: listB ?? this.listB,
    );
  }

  @override
  List<Object?> get props {
    return [
      listA,
      listB,
    ];
  }
}
