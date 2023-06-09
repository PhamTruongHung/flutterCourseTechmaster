import 'package:flutter/material.dart';
import 'package:flutter_learning/models/avatar.dart';
import 'package:flutter_learning/models/text_field.dart';
import 'package:flutter_learning/models/user.dart';
import 'package:intl/intl.dart';

class UserInforScreen extends StatefulWidget {
  const UserInforScreen({super.key, required this.title});

  final String title;

  @override
  State<UserInforScreen> createState() => _UserInforScreenState();
}

class _UserInforScreenState extends State<UserInforScreen> {
  User user = User(
      name: 'Pham Truong Hung',
      phoneNumber: '0396153230',
      email: 'trh.bkdn@gmail.com',
      sex: CustomSex.nam,
      address: 'address',
      dateOfBirth: DateTime.now());

  TextEditingController nameControler = TextEditingController();
  TextEditingController phoneNumberControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController sexControler = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  TextEditingController dateOfBirthControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          textAlign: TextAlign.start,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Log out action');
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 1000,
                width: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Avatar(user: user),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: nameControler,
                      lable: 'Ho va ten',
                      defaultValue: user.name,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: dateOfBirthControler,
                            lable: 'Ngay sinh',
                            defaultValue: DateFormat('dd/MM/yyyy')
                                .format(user.dateOfBirth!),
                            suffixIcon:
                                const Icon(Icons.calendar_today_outlined),
                            onSuffixIconClick: () {
                              debugPrint(
                                  'Show pop-up to Change date of birth - callBackFucntion!!!');
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            alignment: Alignment.topLeft,
                            height: 78,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Gioi tinh',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: user.sex == CustomSex.nam
                                                ? Colors.black
                                                : Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                          ),
                                          height: 100,
                                          child: Text(
                                            'Nam',
                                            style: TextStyle(
                                              color: user.sex == CustomSex.nam
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: user.sex == CustomSex.nu
                                                ? Colors.black
                                                : Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          height: 100,
                                          child: Text(
                                            'Nu',
                                            style: TextStyle(
                                              color: user.sex == CustomSex.nu
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    CustomTextField(
                      controller: emailControler,
                      lable: 'Email (Khong bat buoc)',
                      defaultValue: user.email,
                    ),
                    CustomTextField(
                      controller: addressControler,
                      lable: 'Dia chi',
                      defaultValue: user.address,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                offset: Offset(2, 2),
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: InkWell(
                        child: const Text(
                          'Luu thay doi',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          debugPrint('Luu thay doi!!!');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
