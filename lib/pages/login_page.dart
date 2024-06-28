import 'package:flutter/material.dart';
import 'package:assigment/models/user.dart';
import 'package:go_router/go_router.dart';


class login_page extends StatelessWidget {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  login_page({super.key});

  List<User>users = [
    User(
        username:'admin1',
        password: "1234",
    ),
    User(
      username:'admin2',
      password: "1235",
    ),
    User(
      username:'admin3',
      password: "1236",
    ),
    User(
      username:'admin4',
      password: "1237",
    ),
    User(
      username:'admin5',
      password: "1238",
    ),
  ];

  Color errorColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius:90,
              backgroundImage: AssetImage('assest/user2.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: controllerUsername,
                decoration: new InputDecoration(
                  labelText:'username',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(122,120,121,100),
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: new BorderSide(
                      color: errorColor
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: controllerPassword,
                decoration: new InputDecoration(
                    labelText:'password',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(122,120,121,100),
                    ),
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: new BorderSide(
                            color: errorColor
                        )
                    )
                ),
              ),
            ),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(135,112,120,100),
                borderRadius: BorderRadius.circular(25)
              ),
              child:TextButton(
                onPressed: (){
                  User? loggedInUser = users.firstWhere((user){
                    return user.username == controllerUsername.text &&
                        user.password == controllerPassword.text;
                  });
                  loggedInUser != null ? context.push('/add',extra: loggedInUser):
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content:Text('Siz tolig toldirmadnigiz'))
                  );
                },
                child: Text('LOGIN',style:
                TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:Colors.white),
                ),
              ) ,
            )
          ],
        ),
    );
  }
}
