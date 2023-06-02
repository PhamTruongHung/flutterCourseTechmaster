// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<User> users = [];
    users.add(User(
        name: 'name 0',
        avatarUrl:
            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1480&q=80',
        isUpload: true));
    users.add(User(name: 'name 1', isUpload: true));
    users.add(User(name: 'name 2', avatarUrl: 'avatarUrl'));

    // debugPrint(users.toString());

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Avatar(
              user: users[0],
            ),
            Avatar(
              user: users[1],
            ),
            Avatar(
              user: users[2],
            ),
          ],
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final User user;
  const Avatar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      // color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                user.avatarUrl == null
                    ? NameBuildAvatar(user: user)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(
                            100), 
                        child: Image.network(
                          user.avatarUrl!,
                          width: 200,
                          height: 200,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return NameBuildAvatar(user: user);
                          },
                        ),
                      ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: user.isUpload ? Colors.white : null,
                  ),
                  child: Icon(
                    user.isUpload ? Icons.file_upload_outlined : null,
                    size: 40,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(user.name),
            ),
          )
        ],
      ),
    );
  }
}

class NameBuildAvatar extends StatelessWidget {
  const NameBuildAvatar({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    var generatedColor = Random().nextInt(Colors.primaries.length);
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.primaries[generatedColor],
              borderRadius: BorderRadius.circular(100)),
        ),
        Text(
          user.name.characters.first.toUpperCase(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

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
