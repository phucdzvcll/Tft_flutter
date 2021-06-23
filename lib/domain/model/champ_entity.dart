class ChampEntity {
  final String name;
  final int cost;
  final String imgUrl;
  final String id;
  final List<String> traitsUrl;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const ChampEntity({
    required this.name,
    required this.cost,
    required this.imgUrl,
    required this.id,
    required this.traitsUrl,
  });

  ChampEntity copyWith({
    String? name,
    int? cost,
    String? imgUrl,
    String? id,
    List<String>? itemImgsUrl,
  }) {
    if ((name == null || identical(name, this.name)) &&
        (cost == null || identical(cost, this.cost)) &&
        (imgUrl == null || identical(imgUrl, this.imgUrl)) &&
        (id == null || identical(id, this.id)) &&
        (itemImgsUrl == null || identical(itemImgsUrl, this.traitsUrl))) {
      return this;
    }

    return new ChampEntity(
      name: name ?? this.name,
      cost: cost ?? this.cost,
      imgUrl: imgUrl ?? this.imgUrl,
      id: id ?? this.id,
      traitsUrl: itemImgsUrl ?? this.traitsUrl,
    );
  }

  @override
  String toString() {
    return 'ChampEntity{name: $name, cost: $cost, imgUrl: $imgUrl, id: $id, itemImgsUrl: $traitsUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChampEntity &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          cost == other.cost &&
          imgUrl == other.imgUrl &&
          id == other.id &&
          traitsUrl == other.traitsUrl);

  @override
  int get hashCode =>
      name.hashCode ^
      cost.hashCode ^
      imgUrl.hashCode ^
      id.hashCode ^
      traitsUrl.hashCode;
//</editor-fold>

}
