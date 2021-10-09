class LoginModel {
  LoginModel({
    required this.accessToken,
    required this.tokenType,
    required this.data,
  });
  late final String accessToken;
  late final String tokenType;
  late final Data data;

  LoginModel.fromJson(Map<String, dynamic> json){
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['access_token'] = accessToken;
    _data['token_type'] = tokenType;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.image,
  });
  late final int id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String phone;
  late final String image;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['image'] = image;
    return _data;
  }
}