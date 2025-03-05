
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/pages/register.dart';
import 'package:untitled3/pages/skype_home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
List<User> users=[
  User(name: "Mahmoud", password: "123", email: "mahmoudraafat@gamil.com"),
  User(name: "Khalid", password: "23", email: "khalid@gamil.com"),
  User(name: "Raafat", password: "23", email: "Raafat@gamil.com"),

];
class _LoginPageState extends State<LoginPage> {
Icon ic=Icon(Icons.remove_red_eye);
bool check=true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          foregroundColor: Colors.white,
          leading: Icon(Icons.account_circle_rounded),
          title: Text("Skype",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),

          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(

                    controller: email,
                    decoration: InputDecoration(

                      hintText: 'Email',
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      suffixIcon:Icon(Icons.email),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextFormField(

                    controller: password,
                    obscureText: check,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: "password",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              if(check==true) {
                                check = false;
                                ic = Icon(Icons.password);
                              }
                            else{
                                check = true;
                                ic = Icon(Icons.remove_red_eye);
                              }
                            });
                          },
                          child: ic)
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      fixedSize: Size(300, 50)

                    ),

                    onPressed: () {

                      if(email.text==""||password.text=="")
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
    return  AlertDialog(
                            title: Text('Empty Fields',style: TextStyle(color: Colors.red),),
                            content: Text(
                                "Please fill the empty fields",style: TextStyle(color: Colors.red),),
                            actions: [
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );},
                        );
                      else {
                        bool check_email=false;
                        bool check_password=false;
                        for(int i=0;i<users.length;i++){
                          if(users[i].email==email.text){
                            check_email=true;
                            if(users[i].password==password.text){
                              check_password=true;
                              showDialog(
                              context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
            'Welcome ${users[i].name}', style: TextStyle(color: Colors.green)),
        content: Text(
            "Welcome to Skype", style: TextStyle(color: Colors.green)),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (b) {
                    return SkypeHome(users[i]);
                  }));
            },
          ),
        ],
      );

    });
                            }
                        }}
                          if(check_email==false)
                          showDialog(
                          context: context,
    builder: (BuildContext context) {
    return  AlertDialog(
                                title: Text('Invaild Email',style: TextStyle(color: Colors.red)),
                                content: Text(
                                    "your email is wrong",style: TextStyle(color: Colors.red)),
                                actions: [
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );}
                            );
                          if(check_email ==true &&check_password==false)
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
                                title: Text('Invaild password',style: TextStyle(color: Colors.red)),
                                content: Text(
                                    "your password is wrong",style: TextStyle(color: Colors.red),),
                                actions: [
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );}
                            );
                        }

                      setState(() {

                      });
                    },
                    child: Text('Login'),
                  ),
                ),
                  Row(children: [
                    Text("Don't have an account ... "),
                    InkWell(
                        onTap: (){

    Navigator.of(context).push(
    MaterialPageRoute(builder: (b) {
    return RegisterPage(users);
    }));},

                        child: Text("Register here",
                          style: TextStyle(
                              color: Colors.transparent,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                          decorationColor: Colors.blueAccent,
                            shadows: [
                              Shadow(
                                  color: Colors.blue,
                                  offset: Offset(0, -2))
                            ],),))

                  ],)
              ],
            ),
          ),
        )
    );
  }}