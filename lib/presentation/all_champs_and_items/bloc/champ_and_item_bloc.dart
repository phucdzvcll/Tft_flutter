import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:tft_flutter/domain/domain.dart';

part 'champ_and_item_event.dart';
part 'champ_and_item_state.dart';

class ChampAndItemBloc extends Bloc<ChampAndItemEvent, ChampAndItemState> {
  ChampAndItemBloc() : super(ChampAndItemInitial());
  final GetAllChampsUseCase getAllChampsUseCase = GetIt.instance.get();

  List<ChampEntity> _champs = [];

  @override
  Stream<ChampAndItemState> mapEventToState(
    ChampAndItemEvent event,
  ) async* {
    if (event is InitEvent) {
      yield* _handleGetChamp();
    }
  }

  Stream<ChampAndItemState> _handleGetChamp() async* {
    _champs.clear();
    var result = await getAllChampsUseCase.execute(EmptyInput());
    if (result.isSuccess) {
      yield GetChampSuccessState(champs: result.success);
    } else {
      yield GetChampErrorState();
    }
  }
}
