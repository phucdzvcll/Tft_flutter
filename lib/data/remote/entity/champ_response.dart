import 'package:json_annotation/json_annotation.dart';

part 'champ_response.g.dart';

@JsonSerializable()
class ChampResponse {
  String? name;
  String? id;
  int? cost;
  List<String>? traits;
  List<String>? items;

//<editor-fold desc="Data Methods" defaultstate="collapsed">
  ChampResponse({this.name, this.id, this.cost, this.traits, this.items});

  ChampResponse.fromJson(dynamic json) {
    name = json["name"];
    id = json["id"];
    cost = json["cost"];
    traits = json["traits"] != null ? json["traits"].cast<String>() : [];
    items = json["items"] != null ? json["items"].cast<String>() : [];
  }

  ChampResponse copyWith({
    String? name,
    String? id,
    int? cost,
    List<String>? traits,
    List<String>? items,
  }) {
    return new ChampResponse(
      name: name ?? this.name,
      id: id ?? this.id,
      cost: cost ?? this.cost,
      traits: traits ?? this.traits,
      items: items ?? this.items,
    );
  }

  @override
  String toString() {
    return 'ChampResponse{name: $name, id: $id, cost: $cost, traits: $traits, items: $items}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChampResponse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          id == other.id &&
          cost == other.cost &&
          traits == other.traits &&
          items == other.items);

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      cost.hashCode ^
      traits.hashCode ^
      items.hashCode;

//</editor-fold>

}
