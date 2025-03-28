import 'package:equatable/equatable.dart';

import '../models/models.dart';

abstract class ComplexListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ComplexListLoadInProgress extends ComplexListState {
  ComplexListLoadInProgress();
}

class ComplexListSuccess extends ComplexListState {
  ComplexListSuccess({
    required this.items,
  });

  final List<Item> items;

  @override
  List<Object?> get props => [
        items,
      ];
}

class ComplexListFailure extends ComplexListState {
  ComplexListFailure();
}

class ComplexListDeleteInProgress extends ComplexListState {
  ComplexListDeleteInProgress({
    required this.items,
  });

  final List<Item> items;

  @override
  List<Object?> get props => [
        items,
      ];
}

class ComplexListDeleteSuccess extends ComplexListState {
  ComplexListDeleteSuccess({
    required this.items,
  });

  final List<Item> items;

  @override
  List<Object?> get props => [
        items,
      ];
}

class ComplexListDeleteFailure extends ComplexListState {
  ComplexListDeleteFailure({
    required this.items,
  });

  final List<Item> items;

  @override
  List<Object?> get props => [
        items,
      ];
}
