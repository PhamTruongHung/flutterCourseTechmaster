void main() async {
  print('Start: ${DateTime.now().second}');

  var loginVar = login();
  var getConfigVar = getConfig();

  loginVar.then((value) => getConfigVar.then((value) => getProfile()));

  print('Finish: ${DateTime.now().second}');
}

Future<void> login() async {
  await Future.delayed(Duration(seconds: 3));
  print('login: ${DateTime.now().second}');
}

Future<void> getConfig() async {
  await Future.delayed(Duration(seconds: 1));
  print('getConfig: ${DateTime.now().second}');
}

Future<void> getProfile() async {
  await Future.delayed(Duration(seconds: 1));
  print('getProfile: ${DateTime.now().second}');
}
