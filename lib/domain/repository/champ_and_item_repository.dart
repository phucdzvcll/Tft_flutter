import 'package:tft_flutter/domain/common/either.dart';
import 'package:tft_flutter/domain/common/failure.dart';
import 'package:tft_flutter/domain/model/champ_entity.dart';

abstract class ChampAndItemRepository {
  Future<Either<Failure, List<ChampEntity>>> getListChamp();
}
