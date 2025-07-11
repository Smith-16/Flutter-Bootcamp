import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashapp2/loginscreen.dart';

class DashboardScreen extends StatefulWidget
{
  const DashboardScreen({super.key});



  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  late SharedPreferences sharedPreferences;
  String email = "";

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    initial();

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
            title: Text("Welcome: $email"),
            actions:
            [

              IconButton(onPressed: ()
              {
                sharedPreferences.setBool('project', true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()));
              }, icon:const Icon(Icons.logout))
            ],


          )
      );
  }

  void initial()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(()
    {

      email = sharedPreferences.getString("myemail")!;

    });
  }
}
