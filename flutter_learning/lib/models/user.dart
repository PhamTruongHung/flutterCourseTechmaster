// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int? id;
  String? name;
  String? avatar;
  String? createdDate;
  bool? isUpload;
  String? phoneNumber = 'phoneNumber';

  User(
      {this.id,
      this.name,
      this.avatar,
      this.createdDate,
      this.isUpload = false});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    createdDate = json['createdDate'];
    isUpload = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['avatar'] = avatar;
    data['createdDate'] = createdDate;
    return data;
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, avatar: $avatar, createdDate: $createdDate)';
  }
}
