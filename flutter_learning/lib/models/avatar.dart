import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/models/user_infor.dart';

class Avatar extends StatelessWidget {
  final UserInfor user;
  const Avatar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
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
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          user.avatarUrl!,
                          width: 200,
                          height: 200,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return const Center(
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
              child: Text(
                user.phoneNumber!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
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

  final UserInfor user;

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
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
