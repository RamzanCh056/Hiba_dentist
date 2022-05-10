
import 'package:flutter/material.dart';


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
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
 


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
             SizedBox(height: 40,),
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
              //  autocorrect: true,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  prefixIcon: Icon(Icons.person),
                  hintStyle: TextStyle(color: Colors.grey),
                   border: OutlineInputBorder(),
                    errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                          
                  filled: true,
                  fillColor: Color.fromARGB(255, 206, 245, 235),
                  enabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color:Color.fromARGB(255, 206, 245, 235), width: 2),
                   ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 206, 245, 235), width: 2),
                  ),
                ),
                
                
                ),
                
      
                ),
              
                
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child:  TextFormField(
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
                  fillColor: Color.fromARGB(255, 206, 245, 235),
                  enabledBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color:Color.fromARGB(255, 206, 245, 235), width: 2),
                   ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 206, 245, 235), width: 2),
                  ),
                ),
                
                
                ),
                
      
                ),
              
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Text(
                          'Forgot Password ?',
                          style: TextStyle(fontSize: 14.0, color: Colors.blue),
                        ),
              ],),
              
                 
                       SizedBox(height: 38,),
               
                     Column(
                    children: [
                      MaterialButton(
                        color: Color.fromARGB(255, 1, 11, 66),
                        minWidth: double.infinity,
                        height: 50,
                          onPressed: ()  {
               
          
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
                    ],
                ),
                SizedBox(height: 10,),
                 // ),
                   
                //       TextButton(
                //         onPressed: () => {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(
                //           //     builder: (context) => ForgotPassword(),
                //           //   ),
                //           // )
                //         },
                //         child: Text(
                //           'Forgot Password ?',
                //           style: TextStyle(fontSize: 14.0),
                //         ),
                   
                // ),
      
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // Validate returns true if the form is valid, otherwise false.
                      //     if (_formKey.currentState!.validate()) {
                      //       setState(() {
                      //         email = emailController.text;
                      //         password = passwordController.text;
                      //       });
                      //       userLogin();
                      //     }
                      //   },
                      //   child: Text(
                      //     'Login',
                      //     style: TextStyle(fontSize: 18.0),
                      //   ),
                      // ),
                     
                   
  //               Container(
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Text("         Don't have an Account? "),
  //                     TextButton(
  //                       onPressed: () => {
  //                         // Navigator.pushAndRemoveUntil(
  //                         //     context,
  //                         //     PageRouteBuilder(
  //                         //       pageBuilder: (context, a, b) => Signup(),
  //                         //       transitionDuration: Duration(seconds: 0),
  //                         //     ),
  //                         //     (route) => false)
  //                       },
  //                       child: Text('Signup', style: TextStyle(
  //   decoration: TextDecoration.underline,
  // ),),
  //                     ),
  //                     // TextButton(
  //                     //   onPressed: () => {
  //                     //     Navigator.pushAndRemoveUntil(
  //                     //         context,
  //                     //         PageRouteBuilder(
  //                     //           pageBuilder: (context, a, b) => UserMain(),
  //                     //           transitionDuration: Duration(seconds: 0),
  //                     //         ),
  //                     //         (route) => false)
  //                     //   },
  //                     //   child: Text('Dashboard'),
  //                     // ),
  //                   ],
  //                 ),
  //               )
              ],
            ),
          ),
        ),
        ],),
      )
      
      
      
      
      
      
    );
  }
}