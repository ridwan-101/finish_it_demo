import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'saved_recepie_event.dart';
part 'saved_recepie_state.dart';

class SavedRecepieBloc extends Bloc<SavedRecepieEvent, SavedRecepieState> {
  SavedRecepieBloc() : super(SavedRecepieInitial());

  @override
  Stream<SavedRecepieState> mapEventToState(
    SavedRecepieEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
