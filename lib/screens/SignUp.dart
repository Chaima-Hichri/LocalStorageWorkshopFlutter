import 'package:flutter/material.dart';
import 'package:workshops_sae/screens/SignIn.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  late String username;
  late String email;
  late String password;
  GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png",width: 200,),
              TextFormField(
                onSaved: (value){
                  username=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return "Username cannot be empty";
                },
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder()
                ),


              ),
              SizedBox(height: 15,),
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
                  //ou bien Inkwell
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context)=>SignIn()));
                    },
                    child: Icon(Icons.arrow_forward_rounded,color: Colors.deepOrange,),
                  )
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
                    onPressed: (){

                    if(_globalKey.currentState!.validate()){
                      _globalKey.currentState!.save();
                      showDialog(context: context,
                          builder: (context){
                        return AlertDialog(
                          title: Text("informations"),
                          content: Text("Welcome "+username),
                        );
                          }

                      );
                    }
                    },


                    child: Text("SIGN UP")


                ),
              )
              





            ],
          ),
        ),
      ) ,

    );
  }
}
