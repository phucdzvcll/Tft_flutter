import 'package:get_it/get_it.dart';
import 'package:tft_flutter/common/common.dart';
import 'package:tft_flutter/data/mapper/champ_list_mapper.dart';
import 'package:tft_flutter/domain/domain.dart';

import '../remote/entity/api_service.dart';

class ChampAndItemRepositoryImpl extends ChampAndItemRepository {
  @override
  Future<Either<Failure, List<ChampEntity>>> getListChamp() async {
    ApiService apiService = GetIt.instance.get();
    ChampsListMapper _champsListMapper = GetIt.instance.get();
    var result = await handleNetworkResult(apiService.getListChamp());
    if (result.isSuccess()) {
      return SuccessValue(_champsListMapper.mapList(result.response));
    } else {
      return FailValue(Failure());
    }
  }
}
