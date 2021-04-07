class ListingData {
  String title;
  String subtitle;
  double rating;
  int time;
  double distance;
  int cost;
  int carCost;
  bool isActive;
  String thumbnail;

  ListingData({
      this.title, 
      this.subtitle, 
      this.rating, 
      this.time, 
      this.distance, 
      this.cost, 
      this.carCost, 
      this.isActive,
      this.thumbnail,
    }
  );

  ListingData.fromJson(dynamic json) {
    title = json["title"];
    subtitle = json["subtitle"];
    rating = json["rating"];
    time = json["time"];
    distance = json["distance"];
    cost = json["cost"];
    carCost = json["carCost"];
    isActive = json["isActive"];
    isActive = json["thumbnail"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["subtitle"] = subtitle;
    map["rating"] = rating;
    map["time"] = time;
    map["distance"] = distance;
    map["cost"] = cost;
    map["carCost"] = carCost;
    map["isActive"] = isActive;
    map["thumbnail"] = thumbnail;
    return map;
  }

}