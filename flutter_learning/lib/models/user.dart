// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String name;
  final String? avatarUrl;
  final bool isUpload;
  final String? phoneNumber;
  final String? email;
  final CustomSex? sex;
  final String? address;
  final DateTime? dateOfBirth;

  User({
    bool? isUpload,
    required this.name,
    this.avatarUrl,
    this.phoneNumber,
    this.email,
    this.sex,
    this.address,
    this.dateOfBirth,
  }) : isUpload = isUpload ?? false;

  @override
  String toString() {
    return 'User(name: $name, avatarUrl: $avatarUrl, isUpload: $isUpload, phoneNumber: $phoneNumber, email: $email, sex: $sex, address: $address, dateOfBirth: $dateOfBirth)';
  }
}

enum CustomSex { nam, nu }
