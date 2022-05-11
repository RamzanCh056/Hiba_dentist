import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiba_dentist/filelist.dart';
import 'package:flutter/services.dart';
var  result;
//import 'package:open_file/open_file.dart';
class   appointment  extends StatelessWidget {
  const   appointment ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyApp  ();
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Center(
        child: Column(children: [
             CarouselSlider(
           items: [   Stack(
               clipBehavior: Clip.none,
                     
             children: [
            
                       SingleChildScrollView(
                         child: Container(
                                     height: 580,
                                     width: double.infinity,
                                     color:  Color.fromRGBO(201, 219, 233, 1),
                                      child:Column(children: [
                                         Container(
                                            height: 290,
                                        width: double.infinity,
                                    child: Image.network("http://drhibasaadeh.com/media/serviceImg/CosmeticDen.jpg",fit: BoxFit.fill,),
                                      ),
                                      SizedBox(height: 45,),
                                          Text("Cosmetic Dentistry", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 110,right: 110),
                                            child: Divider(thickness: 1,color:  Color.fromARGB(255, 1, 11, 66),),
                                          ),
                                   Column(children: [  ListTile(
                                  
                                        title: Text("Modern Equipment ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      ),
                                        ListTile(
                                  
                                        title: Text("Proffessional Dentist ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      ),
                                       ListTile(
                                  
                                        title: Text("24/7 Call Support ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      )
                                      ],)
                                         
                                      ],)
                                          
                                            
                                  ),
                       ),
             Positioned(
            right: 90,
            
            bottom: 265,
            child:  Card(
            color:  Color.fromARGB(255, 201, 219, 233),
                                 //  elevation: 5,
                                    child: Container(
             height: 50,
             width: 100,
             child:   Center(child: Text("\$200", style: TextStyle(fontSize: 21 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), )),
                                    ),
                                  ),
                ),
                  Positioned(
            right: 60,
            
            top: 545,
            child:  Card( color: Color.fromARGB(255, 1, 11, 66),                         //  elevation: 5,
                                    child: Container(
             height: 50,
             width: 150,
             child:   Center(child: Text("Appointment", style: TextStyle(fontSize: 18 , color: Colors.white ,fontWeight: FontWeight.bold,), )),
                                    ),
                                  ),
                )
              
           ],
           ),
           //
           Stack(
               clipBehavior: Clip.none,
                     
             children: [
            
                       SingleChildScrollView(
                         child: Container(
                                     height: 580,
                                     width: double.infinity,
                                     color:  Color.fromARGB(255, 201, 219, 233),
                                      child:Column(children: [
                                         Container(
                                            height: 290,
                                        width: double.infinity,
                                    child: Image.network("http://drhibasaadeh.com/media/serviceImg/dental_implant.jpg",fit: BoxFit.fill,),
                                      ),
                                      SizedBox(height: 45,),
                                          Text("Dental Implants", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 110,right: 110),
                                            child: Divider(thickness: 1,color:  Color.fromARGB(255, 1, 11, 66),),
                                          ),
                                      ListTile(
                                  
                                        title: Text("Modern Equipment ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      ),
                                        ListTile(
                                  
                                        title: Text("Proffessional Dentist ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      ),
                                       ListTile(
                                  
                                        title: Text("24/7 Call Support ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                        trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                      )
                                         
                                      ],)
                                          
                                            
                                  ),
                       ),
             Positioned(
            right: 90,
            
           bottom: 265,
            child:  Card(
            color:  Color.fromARGB(255, 201, 219, 233),
                                 //  elevation: 5,
                                    child: Container(
             height: 50,
             width: 100,
             child:   Center(child: Text("\$90", style: TextStyle(fontSize: 21 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), )),
                                    ),
                                  ),
                ),
                  Positioned(
            right: 60,
            
            top: 545,
            child:  Card( color: Color.fromARGB(255, 1, 11, 66),                         //  elevation: 5,
                                    child: Container(
             height: 50,
             width: 150,
             child:   Center(child: Text("Appointment", style: TextStyle(fontSize: 18 , color: Colors.white ,fontWeight: FontWeight.bold,), )),
                                    ),
                                  ),
                )
              
           ],),
            Stack(
                 clipBehavior: Clip.none,
                       
               children: [
              
                         SingleChildScrollView(
                           child: Container(
                                         height: 580,
                                         width: double.infinity,
                                         color:  Color.fromARGB(255, 201, 219, 233),
                                          child:Column(children: [
                                             Container(
                                                height: 290,
                                            width: double.infinity,
                                      child: Image.network("http://drhibasaadeh.com/media/serviceImg/service-3_h0gXNnD.jpg",fit: BoxFit.fill,),
                                          ),
                                          SizedBox(height: 45,),
                                              Text("Dental Bridges", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 110,right: 110),
                                                child: Divider(thickness: 1,color:  Color.fromARGB(255, 1, 11, 66),),
                                              ),
                                          ListTile(
                                      
                                            title: Text("Modern Equipment ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                            ListTile(
                                      
                                            title: Text("Proffessional Dentist ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                           ListTile(
                                      
                                            title: Text("24/7 Call Support ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          )
                                             
                                          ],)
                                              
                                                
                                      ),
                         ),
               Positioned(
              right: 90,
              
             bottom: 265,
              child:  Card(
              color:  Color.fromARGB(255, 201, 219, 233),
                                   //  elevation: 5,
                                      child: Container(
               height: 50,
               width: 100,
               child:   Center(child: Text("\$200", style: TextStyle(fontSize: 21 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  ),
                    Positioned(
              right: 60,
              
              top: 545,
              child:  Card( color: Color.fromARGB(255, 1, 11, 66),                         //  elevation: 5,
                                      child: Container(
               height: 50,
               width: 150,
               child:   Center(child: Text("Appointment", style: TextStyle(fontSize: 18 , color: Colors.white ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  )
                
             ],),
               Stack(
                 clipBehavior: Clip.none,
                       
               children: [
                             
                         SingleChildScrollView(
                           child: Container(
                                         height: 580,
                                         width: double.infinity,
                                         color:  Color.fromARGB(255, 201, 219, 233),
                                          child:Column(children: [
                                             Container(
                                                height: 290,
                                            width: double.infinity,
                                      child: Image.network("http://drhibasaadeh.com/media/serviceImg/Teeth_White.jpg",fit: BoxFit.fill,),
                                          ),
                                          SizedBox(height: 45,),
                                              Text("Teeth Whitening", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 110,right: 110),
                                                child: Divider(thickness: 1,color:  Color.fromARGB(255, 1, 11, 66),),
                                              ),
                                          ListTile(
                              
                                            title: Text("Modern Equipment ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                            ListTile(
                              
                                            title: Text("Proffessional Dentist ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                           ListTile(
                              
                                            title: Text("24/7 Call Support ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          )
                                             
                                          ],)
                                              
                                                
                              ),
                         ),
               Positioned(
                             right: 90,
                             
                           bottom: 265,
                             child:  Card(
                             color:  Color.fromARGB(255, 201, 219, 233),
                                   //  elevation: 5,
                                      child: Container(
               height: 60,
               width: 100,
               child:   Center(child: Text("\$40", style: TextStyle(fontSize: 21 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  ),
                    Positioned(
                             right: 80,
                             
                             top: 545,
                             child:  Card( color: Color.fromARGB(255, 1, 11, 66),                         //  elevation: 5,
                                      child: Container(
               height: 50,
               width: 150,
               child:   Center(child: Text("Appointment", style: TextStyle(fontSize: 18 , color: Colors.white ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  )
                
                            ],),
             Stack(
                 clipBehavior: Clip.none,
                       
               children: [
              
                         SingleChildScrollView(
                           child: Container(
                                         height: 580,
                                         width: double.infinity,
                                         color:  Color.fromARGB(255, 201, 219, 233),
                                          child:Column(children: [
                                             Container(
                                                height: 290,
                                            width: double.infinity,
                                      child: Image.network("http://drhibasaadeh.com/media/serviceImg/rootcanal.jpg",fit: BoxFit.fill,),
                                          ),
                                          SizedBox(height: 45,),
                                              Text("Root Canal Treatment", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 110,right: 110),
                                                child: Divider(thickness: 1,color:  Color.fromARGB(255, 1, 11, 66),),
                                              ),
                                          ListTile(
                                      
                                            title: Text("Modern Equipment ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                            ListTile(
                                      
                                            title: Text("Proffessional Dentist ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          ),
                                           ListTile(
                                      
                                            title: Text("24/7 Call Support ", style: TextStyle(fontSize: 18 , color:  Color.fromARGB(255, 1, 11, 66)), ),
                                            trailing: Icon(Icons.done, size: 28,color:  Color.fromARGB(255, 1, 11, 66)),
                                          )
                                             
                                          ],)
                                              
                                                
                                      ),
                         ),
               Positioned(
              right: 90,
                        bottom: 265,
              child:  Card(
              color:  Color.fromARGB(255, 201, 219, 233),
                                   //  elevation: 5,
                                      child: Container(
               height: 50,
               width: 100,
               child:   Center(child: Text("\$100", style: TextStyle(fontSize: 21 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  ),
                    Positioned(
              right: 80,
              
              top: 545,
              child:  Card( color: Color.fromARGB(255, 1, 11, 66),                         //  elevation: 5,
                                      child: Container(
               height: 60,
               width: 150,
               child:   Center(child: Text("Appointment", style: TextStyle(fontSize: 18 , color: Colors.white ,fontWeight: FontWeight.bold,), )),
                                      ),
                                    ),
                  )
                
             ],)



             ],options: CarouselOptions(
              height: 600,
              
              
            
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
              
           ),
         ),
        ],),
       
      ),
    
    );
  }
}
