class UserLoginModel {
  UserLoginModel({
    required this.status,
    required this.name,
    required this.refresh,
    required this.access,
    required this.message,
    required this.urlId,
  });
  late final bool status;
  late final String name;
  late final String refresh;
  late final String access;
  late final String message;
  late final String urlId;

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    name = json['name'];
    refresh = json['refresh'];
    access = json['access'];
    message = json['message'];
    urlId = json['url_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['name'] = name;
    _data['refresh'] = refresh;
    _data['access'] = access;
    _data['message'] = message;
    _data['url_id'] = urlId;
    return _data;
  }
}
