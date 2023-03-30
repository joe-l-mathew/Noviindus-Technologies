class DriverModel {
  DriverModel({
    required this.status,
    required this.driverList,
  });
  late final bool status;
  late final List<DriverList> driverList;
  
  DriverModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    driverList = List.from(json['driver_list']).map((e)=>DriverList.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['driver_list'] = driverList.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class DriverList {
  DriverList({
    required this.id,
    required this.name,
    required this.mobile,
    required this.licenseNo,
  });
  late final int id;
  late final String name;
  late final String mobile;
  late final String licenseNo;
  
  DriverList.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    licenseNo = json['license_no'];
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['mobile'] = mobile;
    _data['license_no'] = licenseNo;
    return _data;
  }

  @override
  String toString() {
    return 'DriverList(id: $id, name: $name, mobile: $mobile, licenseNo: $licenseNo)';
  }
}
