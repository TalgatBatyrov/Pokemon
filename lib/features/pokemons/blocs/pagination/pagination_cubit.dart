import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemons/blocs/pagination/pagination_state.dart';

class PaginationCubit extends Cubit<PaginationState> {
  PaginationCubit() : super(PaginationInitial());

  void changePaginationState(PaginationState state) {
    emit(state);
  }
}
