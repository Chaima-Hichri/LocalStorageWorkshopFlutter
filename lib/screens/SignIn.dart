import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workshops_sae/screens/BottomNavBar.dart';
import 'package:workshops_sae/screens/MyFilmsListView.dart';
import 'package:workshops_sae/screens/TabBarNav.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  late String email;
  late String password;
  GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 160,left: 20,right: 20),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png",width: 200,),

              TextFormField(

                onSaved: (value){
                  email=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return "Email cannot be empty";
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()
                ),


              ),
              SizedBox(height: 15,),

              TextFormField(
                obscureText: true,
                onSaved: (value){
                  password=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return "password cannot be empty";
                },
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()
                ),


              ),
              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Already have an account?"),
                  ),
                  Icon(Icons.arrow_forward_rounded,color: Colors.deepOrange,)
                ],
              ),
              SizedBox(height: 15,),

              Container(
                width: 350,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white
                    ),
                    onPressed: () async{

                      if(_globalKey.currentState!.validate()){
                        _globalKey.currentState!.save();
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString("email",email );
     Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context)=>TabBarNav()));


                      }
                    },


                    child: Text("SIGN IN")


                ),
              )






            ],
          ),
        ),
      ) ,

    );
  }
}
