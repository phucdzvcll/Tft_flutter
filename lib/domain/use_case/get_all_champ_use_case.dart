import 'package:get_it/get_it.dart';
import 'package:tft_flutter/domain/common/base_use_case.dart';
import 'package:tft_flutter/domain/common/either.dart';
import 'package:tft_flutter/domain/common/failure.dart';
import 'package:tft_flutter/domain/model/champ_entity.dart';
import 'package:tft_flutter/domain/repository/champ_and_item_repository.dart';

class GetAllChampsUseCase extends BaseUseCase<EmptyInput, List<ChampEntity>> {
  ChampAndItemRepository _champAndItemRepository = GetIt.instance.get();

  @override
  Future<Either<Failure, List<ChampEntity>>> executeInternal(
      EmptyInput input) async {
    return await _champAndItemRepository.getListChamp();
  }
}
