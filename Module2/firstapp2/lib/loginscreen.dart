import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboardscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late SharedPreferences sharedPreferences;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: const Text("Login Screen"),),
        body: Center
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [
                      TextField(controller:email,decoration:const InputDecoration(hintText: "Enter Email"),),
                      const SizedBox(height: 10,),
                      TextField(controller:pass,decoration: const InputDecoration(hintText: "Enter Password"),obscureText: true,),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                          onPressed: ()
                        {
                          String e = email.text.toString();
                          String p = pass.text.toString();

                          sharedPreferences.setString("myemail",e);
                          sharedPreferences.setBool("project",false);
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const DashboardScreen()));
                          // if(e == "tops@gmail.com" && p =="1234")
                          // {
                          //    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen(myemail:e)));
                          // }
                          // else
                          // {
                          //   print("Error");
                          // }



                          }, child:const Text("Login"))


                  ],
                ),
            ),
          ),
      );
  }

  void checklogin()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = (sharedPreferences.getBool('project') ?? true);
    print(newuser);

    if(newuser==false)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
      }

  }
}
