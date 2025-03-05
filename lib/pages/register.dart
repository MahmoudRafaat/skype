
import 'package:flutter/material.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/pages/skype_home.dart';

class RegisterPage extends StatefulWidget {
  late List<User> users;
  RegisterPage(this.users);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Icon ic=Icon(Icons.remove_red_eye);
  bool check=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skype",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Form(

            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: "Name",
                      suffixIcon: Icon(Icons.supervised_user_circle),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  fixedSize: Size(300, 50),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    )

              ),

              onPressed: () {
                if(email.text==""||password.text==""||name.text=="")
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
                else{
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                              'Welcome ${name.text}', style: TextStyle(color: Colors.green)),
                          content: Text(
                              "Welcome to Skype", style: TextStyle(color: Colors.green)),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                User user=User(name: name.text, password: password.text, email: email.text);
                                widget.users.add(user);
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (b) {
                                      return SkypeHome(user);
                                    }));
                              },
                            ),
                          ],
                        );

                      });
                }

              },
              child: Text('Register'),


              ),
            ),

        ],
      ),
    );
  }
}