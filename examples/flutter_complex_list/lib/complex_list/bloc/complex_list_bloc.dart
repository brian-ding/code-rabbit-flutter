import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../repository.dart';
import '../models/models.dart';
import 'complex_list_event.dart';
import 'complex_list_state.dart';

class ComplexListBloc extends Bloc<ComplexListEvent, ComplexListState> {
  ComplexListBloc(
    super.initialState, {
    required this.repository,
  }) : super() {
    on<FetchListEvent>(_onFetchList);
    on<DeleteItemEvent>(_onDeleteItem);
  }

  final Repository repository;
  late List<Item> _items;

  Future<void> _onFetchList(FetchListEvent event, Emitter<ComplexListState> emit) async {
    try {
      emit(
        ComplexListLoadInProgress(),
      );
      _items = await repository.fetchItems();
      emit(
        ComplexListSuccess(
          items: _items,
        ),
      );
    } on Exception {
      emit(
        ComplexListFailure(),
      );
    }
  }

  FutureOr<void> _onDeleteItem(DeleteItemEvent event, Emitter<ComplexListState> emit) {
    try {
      emit(
        ComplexListDeleteInProgress(
          items: _items,
        ),
      );
      repository.deleteItem(
        event.id,
      );
      emit(
        ComplexListDeleteSuccess(
          items: _items,
        ),
      );
    } catch (e) {
      emit(
        ComplexListDeleteFailure(
          items: _items,
        ),
      );
    }
  }
}
