// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: 'User name',
              ),
            ),
            SizedBox(height: 24.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                // Perform login logic here
                String userName = _userNameController.text;
                String password = _passwordController.text;

                bool isCertificated =
                    userName == "hung" && password == "123" ? true : false;

                if (userName.isNotEmpty &&
                    password.isNotEmpty &&
                    isCertificated) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              userName: userName,
                            )),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Login Error'),
                        content: Text('Invalid userName or password.'),
                        actions: [
                          ElevatedButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chao mung $userName'),
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(2),
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://s.hdnux.com/photos/51/23/24/10827008/4/ratio3x2_2400.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 30,
              ),
              Text('Tin nhan'),
            ],
          );
        },
      ),
    );
  }
}
