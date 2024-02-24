class Models {
  User? user;
  Katalog? katalog;

  Models({this.user, this.katalog});

  Models.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User?.fromJson(json['user']) : null;
    katalog =
        json['katalog'] != null ? Katalog?.fromJson(json['katalog']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user?.toJson();
    }
    if (katalog != null) {
      data['katalog'] = katalog?.toJson();
    }
    return data;
  }
}

class User {
  String? name;
  String? profile;
  String? address;

  User({this.name, this.profile, this.address});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profile = json['profile'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['profile'] = profile;
    data['address'] = address;
    return data;
  }
}

class Katalog {
  String? name;
  int? stock;
  int? price;

  Katalog({this.name, this.stock, this.price});

  Katalog.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    stock = json['stock'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['stock'] = stock;
    data['price'] = price;
    return data;
  }
}
