import 'dart:convert';

Product productFromData(String data) => Product.fromJson(jsonDecode(data));

String productToData(Product product) => jsonEncode(product.toJson());

class Product{

  late String productName;
  late int cost;
  late String category;
  late Type type;
  String? id;

  Product.fromJson(Map<String, dynamic> json){
    productName = json["productName"];
    cost = json["cost"];
    category = json["category"];
    type = Type.fromJson(json["type"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "productNam": productName,
      "cost": cost,
      "category": category,
      "type": type,
      "id": id,
    };
    return map;
  }

  @override
  String toString() {
    return "Product name: $productName \nCost: $cost \nCategory: $category \nType: \n{\n$type\n} \nId: ${id ?? "ma'lumot topilmadi"}";
  }

}

class Type{

  late String name;
  late String comment;
  late List<int> count;
  late String id;

  Type.fromJson(Map<String, dynamic> json){
    name = json["name"];
    comment = json["comment"];
    count = List<int>.from(json["count"].map((e) => e));
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "name": name,
      "comment": comment,
      "count": count,
      "id": id,
    };
    return map;
  }

  @override
  String toString() {
    return "  Name: $name\n  Comment: $comment\n  Count: $count\n  Id: $id";
  }

}