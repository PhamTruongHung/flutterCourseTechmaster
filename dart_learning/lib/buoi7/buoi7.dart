import 'package:dart_learning/buoi7/user.dart';

void main() {
  final usersJson = [
    {
      "id": 1,
      "name": "Cubone",
      "avatar": "https://2.pik.vn/202058b029a0-5718-4fce-99a9-6aa1d86cd94f.png",
      "createdDate": "28/02/2015 18:30:15"
    },
    {
      "id": 2,
      "name": "Charmander",
      "avatar": "https://2.pik.vn/202012144525-b5e9-442e-8705-2aa4ae815ead.png",
      "createdDate": "27/02/2015 18:30:15"
    },
    {
      "id": 3,
      "name": "Squirtle",
      "avatar": "https://2.pik.vn/2020b7964c75-5ae5-40aa-ad4e-d852e3e7b739.png",
      "createdDate": "26/02/2015 18:30:15"
    },
    {
      "id": 4,
      "name": "Bulbasaur",
      "avatar": "https://2.pik.vn/20201ecb708f-c8aa-473c-b3a6-f0c22ea48ca3.png",
      "createdDate": "16/02/2015 18:30:15"
    },
    {
      "id": 5,
      "name": "Lapras",
      "avatar": "https://2.pik.vn/2020c614a309-5e6c-4549-97b8-b782514f716a.png",
      "createdDate": "07/02/2015 18:30:15"
    },
    {
      "id": 6,
      "name": "Lucario",
      "avatar": "https://2.pik.vn/2021e63be7a8-e1e8-47fb-85c7-d26e5a34ab85.png",
      "createdDate": "09/02/2015 18:30:15"
    },
    {
      "id": 7,
      "name": "U23",
      "avatar": "https://2.pik.vn/2021ac21dc76-76bb-43d4-a9c3-89f67ecb5936.jpg",
      "createdDate": "23/03/2018 19:30:15"
    },
    {
      "id": 8,
      "name": "Bia 333",
      "avatar": "https://2.pik.vn/2021f5421fea-1af4-4f43-b88a-560fd4bf32c9.jpg",
      "createdDate": "23/01/2018 18:30:15"
    },
    {
      "id": 9,
      "name": "Shire",
      "avatar": "https://2.pik.vn/2021a039dd4e-c2f5-4b49-84d9-0c21cb7ca8b1.jpg",
      "createdDate": "29/04/2015 18:30:15"
    },
    {
      "id": 10,
      "name": "Ha Long",
      "avatar": "https://2.pik.vn/2021130407fd-7bf6-4e0f-86f3-bf35b5371e8f.jpg",
      "createdDate": "01/07/2016 14:30:15"
    },
    {
      "id": 11,
      "name": "Sapphire Pulse RX580 8GB",
      "avatar": "https://2.pik.vn/2021cc0ed6a5-d6a1-4fe3-877b-7d879029e847.jpg",
      "createdDate": "29/05/2015 18:30:15"
    },
    {
      "id": 12,
      "name": "Hold to die",
      "avatar": "https://2.pik.vn/2021f82f10e2-b0f2-4f37-bfac-f5e04cd5e921.jpg",
      "createdDate": "29/08/2015 18:30:15"
    },
    {
      "id": 13,
      "name": "Keyboard",
      "avatar": "https://2.pik.vn/202125317451-2c64-473a-8bcd-14dfc0c75c5f.jpg",
      "createdDate": "29/02/2015 18:30:15"
    },
    {
      "id": 14,
      "name": "Honda Future",
      "avatar": "https://2.pik.vn/202164bf869b-6fd9-43f9-8741-b2128c8f38bb.jpg",
      "createdDate": "29/02/2015 18:30:15"
    },
    {
      "id": 15,
      "name": "Oto",
      "avatar": "https://2.pik.vn/20211de01716-b3ae-4664-b5dd-b75a334c5857.jpg",
      "createdDate": "29/02/2015 18:30:15"
    }
  ];

  print('\n-------------Buoi 7 - Vi du 1---------------');
  User user = User.fromMap(usersJson[0]);
  print(user.toString());

  print('\n-------------Buoi 7 - Vi du 2---------------');
  for (var userJson in usersJson) {
    User user = User.fromMap(userJson);
    print(user.toString());
  }
}


