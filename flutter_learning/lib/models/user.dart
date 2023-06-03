class User {
  final String name;
  final String? avatarUrl;
  final bool isUpload;
  User({
    required this.name,
    this.avatarUrl,
    bool? isUpload,
  }) : isUpload = isUpload ?? false;

  @override
  String toString() =>
      'User(name: $name, avatarUrl: $avatarUrl, isUpload: $isUpload)';
}
