import 'package:tft_flutter/common/common.dart';
import 'package:tft_flutter/domain/domain.dart';

import '../remote/entity/champ_response.dart';

class ChampsListMapper extends Mapper<ChampResponse?, ChampEntity> {
  @override
  ChampEntity mapper(ChampResponse? input) {
    return ChampEntity(
        name: (input?.name).defaultEmpty(),
        cost: (input?.cost).defaultZero(),
        imgUrl:
            "https://rerollcdn.com/characters/Skin/5/${(input?.name).defaultEmpty().replaceAll(" ", "")}.png",
        id: (input?.id).defaultEmpty(),
        traitsUrl:
            createImgUrlTraits((input?.traits).defaultEmpty().cast<String>()));
  }

  List<String> createImgUrlTraits(List<String> traits) {
    return traits
        .map((trait) =>
            "https://cdn.lolchess.gg/images/tft/traiticons-black/5.0/$trait.svg")
        .toList();
  }
}
