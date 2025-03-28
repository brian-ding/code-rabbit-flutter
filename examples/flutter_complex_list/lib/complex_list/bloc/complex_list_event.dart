import 'package:equatable/equatable.dart';

abstract class ComplexListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchListEvent extends ComplexListEvent {
  FetchListEvent() : super();
}

class DeleteItemEvent extends ComplexListEvent {
  DeleteItemEvent({
    required this.id,
  }) : super();

  final String id;

  @override
  List<Object?> get props => [
        id,
      ];
}
