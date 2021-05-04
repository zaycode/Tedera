class FoodModel {
  String category;
  List<Items> items;

  FoodModel({
      this.category,
      this.items});

  FoodModel.fromJson(dynamic json) {
    category = json["category"];
    if (json["items"] != null) {
      items = [];
      json["items"].forEach((v) {
        items.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["category"] = category;
    if (items != null) {
      map["items"] = items.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  String title;
  String price;

  Items({
      this.title, 
      this.price});

  Items.fromJson(dynamic json) {
    title = json["title"];
    price = json["price"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["price"] = price;
    return map;
  }

}