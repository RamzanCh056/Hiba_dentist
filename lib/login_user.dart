
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hiba_dentist/NavigationBar.dart';
import 'package:hiba_dentist/drawer.dart';
import 'package:hiba_dentist/profile.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' ;

var token;
class LoginUser extends StatelessWidget {
  const LoginUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Login ();
  }
}
class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
 
  
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
    loginfun(String email_id, String password) async {
     var headers = {
  'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b',
  'Content-Type': 'application/json',
  'Cookie': 'csrftoken=FqNJnPS7YzpZtOFcTTsmQNPDWYQBKL6gd9rlq50wrDLV1sHSagbTSsZMQitQby07; sessionid=w7p7b0gz4rjq7z5tud3x7v7gqvvbwy13'
};
var request = http.Request('POST', Uri.parse('http://drhibasaadeh.com/api/patients/login/'));
request.body = json.encode({
  "email_id": email_id,
  "password": password
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  var tok=await response.stream.bytesToString();
  var token1=jsonDecode(tok);
  token=token1['token'];
  // var crs=tok.toString().split(':');
  // print('this is Token ${tok1["token"]} : ${tok1.runtimeType}');
  // print('this is token${token[0]}');
    
  print( response);
  print("api is hit on login");
    Get.snackbar(
              "",
               "", 
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Colors.black,
               borderRadius: 20,
               margin: EdgeInsets.all(15),
               colorText: Colors.green,
               messageText: Text("Login successfully", style: TextStyle(color: Colors.white),),
               duration: Duration(seconds: 4),
               isDismissible: true,
              
               forwardAnimationCurve: Curves.easeOutBack,
                 
               );
             
               Get.to( Profile());
}
else {
  print(response.reasonPhrase);
  print("api not hit on login");
   Get.snackbar(
              "Wrong",
               "", 
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Colors.black,
               borderRadius: 20,
               margin: EdgeInsets.all(15),
               colorText: Colors.red,
               messageText: Text("Wrong credential", style: TextStyle(color: Colors.white),),
               duration: Duration(seconds: 4),
               isDismissible: true,
              
               forwardAnimationCurve: Curves.easeOutBack,
                 
               );
}

   }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
         
             SizedBox(height: 40,),
              Row( mainAxisAlignment: MainAxisAlignment.start,
             children: [
              IconButton(onPressed: (){   Get.to(MaterialYou());}, icon: Icon(Icons.arrow_back_ios_new)),
           ],),
           Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                                 height: 170,
                                width: 170,
                                 
                                  child: Image(image: AssetImage('images/logo.png',), fit: BoxFit.fill,),
                               ),
              ],
            ),
          ),
          Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child:  TextFormField(
                    controller: emailController,
              //  autocorrect: true,
              
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  prefixIcon: Icon(Icons.person),
                  hintStyle: TextStyle(color: Colors.grey),
                   border: OutlineInputBorder(),
                    errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                          
                  filled: true,
                  fillColor:  HexColor("#EEF9FF"),
                  enabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: HexColor("#EEF9FF"), width: 2),
                    
                   ),
                     
                   
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: HexColor("#EEF9FF"), width: 2),
                  ),
                ),
                validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                
                ),
                
      
                ),
              
                
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child:  TextFormField(
                    controller: passwordController,
              //  autocorrect: true,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter you password',
                  prefixIcon: Icon(Icons.lock),
                  hintStyle: TextStyle(color: Colors.grey),
                   border: OutlineInputBorder(),
                    errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                          
                  filled: true,
                  fillColor:  HexColor("#EEF9FF"),
                  enabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: HexColor("#EEF9FF"), width: 2),
                   ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color:  HexColor("#EEF9FF"), width: 2),
                  ),
                ),
                validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter password';
                        }
                        return null;
                      },
                
                ),
                
      
                ),
              
             
              
                 
                       SizedBox(height: 25,),
               
                     Column(
                    children: [
                      MaterialButton(
                        color: Color.fromARGB(255, 1, 11, 66),
                        minWidth: double.infinity,
                        height: 50,
                          onPressed: ()  {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                               email = emailController.text;
                            password = passwordController.text;
                        
                                });
                               
                                  

                              
                  
                             
                                   loginfun(emailController.text, passwordController.text); 
                              }
          

                         
               
          
          },
                       
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.indigo,
                          ),
                         // borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,color: Colors.white,
                          ),
      
                        ),
                      ),
              //          Row( mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //    Text(
              //             'Forgot Password',
              //             style: TextStyle(fontSize: 14.0, color: Colors.blue),
              //           ),
              // ],),
                    ],
                ),
                SizedBox(height: 10,),
               
              ],
            ),
          ),
        ),
        ],),
      )
      
      
      
      
      
      
    );
  }
}