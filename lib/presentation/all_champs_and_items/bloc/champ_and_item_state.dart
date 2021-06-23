part of 'champ_and_item_bloc.dart';

@immutable
abstract class ChampAndItemState {}

class ChampAndItemInitial extends ChampAndItemState {}

class GetChampErrorState extends ChampAndItemState {}

class GetChampSuccessState extends ChampAndItemState {
  final List<ChampEntity> champs;

  GetChampSuccessState({required this.champs});
}
