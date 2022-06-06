
import 'dart:ffi';

import 'package:before_after/before_after.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hiba_dentist/service/costmetic_dencity.dart';
import 'package:hiba_dentist/drawer.dart';
import 'package:hiba_dentist/model/before_after.dart';
import 'package:hiba_dentist/model/feedback_model.dart';
import 'package:hiba_dentist/model/services.dart';
import 'package:hiba_dentist/model/slider_model.dart';
import 'package:hiba_dentist/service/dental_bridge.dart';
import 'package:hiba_dentist/service/root-treatment.dart';
import 'package:hiba_dentist/service/teth_whitnes.dart';
import 'package:http/http.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';
import 'package:carousel_slider/carousel_slider.dart';

import 'service/dental_implement.dart';
  var first = 'http://drhibasaadeh.com';

class Services extends StatefulWidget {
  const Services({ Key? key }) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _isLoading = false;
  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }
   List<services> photoList = [];
    Future<List<services>> servicesfunction() async {
      
    var headers = {
      'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b'
    };

// var request = http.Request('GET', Uri.parse('http://drhibasaadeh.com/api/patients/beforeAfterImg/'));
    var request = await http.get(
        Uri.parse('http://drhibasaadeh.com/api/patients/services/'),
        headers: headers);
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();
    var data = jsonDecode(request.body.toString());

    if (request.statusCode == 200) {
         for(Map i in data){
        services photos = services(serviceImage: i['service_image']);
        photoList.add(photos);
      }
      // print(await response.stream.bytesToString());
      print("api is hit on carsol");
      return  photoList;
    
    } else {
      // print(response.reasonPhrase);
      print("api not hit");
      return photoList;
    }
  }
  // before after
    Future<before_after> beforeafter() async {
    var headers = {
      'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b'
    };

// var request = http.Request('GET', Uri.parse('http://drhibasaadeh.com/api/patients/beforeAfterImg/'));
    var request = await http.get(
        Uri.parse('http://drhibasaadeh.com/api/patients/beforeAfterImg/'),
        headers: headers);
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();
    var data = jsonDecode(request.body.toString());

    if (request.statusCode == 200) {
      // print(await response.stream.bytesToString());
      print("api is hit");
      return before_after.fromJson(data);
    } else {
      // print(response.reasonPhrase);
      print("api not hit");
      return before_after.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: Scaffold(    backgroundColor: Color.fromARGB(223, 255, 253, 253),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 1, 11, 66),
      //   title: Text("Services"),
      //   centerTitle: true,
      // ),

      body: SafeArea(
        child: _isLoading
            ? Center(
                child: Container(
                  width: 80,
             child:   LoadingIndicator(
    indicatorType: Indicator.ballBeat, /// Required, The loading type of the widget
    colors: const [Color.fromARGB(255, 1, 11, 66),],       /// Optional, The color collections
    strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
        /// Optional, Background of the widget
    pathBackgroundColor: Colors.blue   /// Optional, the stroke backgroundColor
)

                ),
             
              ): ListView(children: [
          SizedBox(height: 20,),
          
            FutureBuilder<before_after>(
                    future: beforeafter(),
                    builder: (context, snapshot) {
                      if (snapshot.data != null) {
                        var first = 'http://drhibasaadeh.com';
        
                        //  var second=snapshot.data!.beforeImage.toString();
                        //  var image=first+second;
                        print('image');
                        return ListView.builder(
                            shrinkWrap: true,
                            // scrollDirection: ax,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Column(
                                 
                                  children: [
        
                                    // CircleAvatar(backgroundImage: NetworkImage(snapshot.data!.beforeImage![index].toString()),),
                                    // SizedBox(height: 10,),
                                   Stack(children: [
                        Container(
                       
                          child: Row(children: [
                        
                           Expanded(
                                flex: 1,
                                child: BeforeAfter(
                                  imageCornerRadius: 1,
                                 
                                 
                                  imageWidth:double.infinity,
                                  beforeImage: Image.network('${first + snapshot.data!.beforeImage.toString()}', fit: BoxFit.fill,),
                                  afterImage: Image.network('${first + snapshot.data!.afterImage.toString()}',
                                      fit: BoxFit.fill,),
                                ),
                                ),
                          //   Container(height: 240,
                          //   width: 195,
                          // child: Image.asset("images/before.jpg",fit: BoxFit.fill,),
                          
                          // ),
                          //  Container(height: 240,
                          //  width:195,
                          // child: Image.asset("images/after.jpg",fit: BoxFit.fill,),
                          
                          // ),
                        
                          ],),
                        ),

                        Positioned(
                          left: 25, bottom: 0, top: 0, right: 35,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            
                           Text("Before", style: TextStyle(fontSize: 22 , color: Colors.white ,fontWeight: FontWeight.bold,), ),
                           
                             Text("After", style: TextStyle(fontSize: 22 , color: Colors.white ,fontWeight: FontWeight.bold,), ),
                        ],))
                    ],),

        
                                    // SizedBox(
                                    //   height: 25,
                                    // ),
                                  ],
                                ),
                              
                              );
                            });
                      } else {
                        return Center(
                               child: CircularProgressIndicator(),
                        );
                      }
                    }),
               SizedBox(height: 20,),
                Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                          
                          children: [
                          Text("OUR SERVICES", style: TextStyle(fontSize: 24 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                          
                          children: [
                          Text("We Offer The Best Quality\n Dental Services ", style: TextStyle(fontSize: 24 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                   ),
                                  SizedBox(height: 20,),
                  FutureBuilder(
                    future: servicesfunction(),
                    builder: (context,AsyncSnapshot<List<services>> snapshot) {
                      if (snapshot.data != null) {
                        var first = 'http://drhibasaadeh.com';
        
                        //  var second=snapshot.data!.beforeImage.toString();
                        //  var image=first+second;
                        print('image');
                        return ListView.builder(
                            shrinkWrap: true,
                            // scrollDirection: ax,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:  1,    //photoList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12, bottom: 12),
                                  child:  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
        
                                      // CircleAvatar(backgroundImage: NetworkImage(snapshot.data!.beforeImage![index].toString()),),
                                      // SizedBox(height: 10,),
                                    
                                
                                         
                                             GestureDetector(
                                               onTap: (){
                                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>   Costemetic_density(),));
                                              
                                               },
                                               child: Container(
                                                   width: double.infinity,
                                                  height:180,
                                                  child: Image.network(
                                                                                             '${first + snapshot.data![0].serviceImage.toString()}',
                                                                                             fit: BoxFit.fill,
                                                                                    )
                                                                                    ),
                                             ),
                                             
                        
                     SizedBox(
                       height: 60,
                       child: Container(
                         color:  HexColor("#EEF9FF"),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Cosmetic Dentistry ", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ), ),
                        ],),),
                     ),
                  SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>   Dental(),));},
                      child: Container(
                        width: double.infinity,
                       height:180,
                       child: Image.network(
                                                                  '${first + snapshot.data![1].serviceImage.toString()}',
                                                                  fit: BoxFit.fill,
                                                         )
                                                         ),
                    ),
                                              SizedBox(
                       height: 60,
                       child: Container(
                         color:  HexColor("#EEF9FF"),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Dental Implants", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,), ),
                        ],),),
                     ),
                                              
                                             SizedBox(height: 30,),
                                        
                                        GestureDetector(
                                          onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>  dental_bridge(),));},
                                          child: Container(
                                            width: double.infinity,
                                           height:180,
                                           child: Image.network(
                                                                                      '${first + snapshot.data![2].serviceImage.toString()}',
                                                                                      fit: BoxFit.fill,
                                                                             )
                                                                             ),
                                        ),
                                                                              SizedBox(
                       height: 60,
                       child: Container(
                         color:  HexColor("#EEF9FF"),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Dental Bridges", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,), ),
                        ],),),
                     ),
                                  SizedBox(height: 30,),     
                           GestureDetector(
                             onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>  tethwhitenes (),));},
                             child: Container(
                               width: double.infinity,
                              height:180,
                              child: Image.network(
                                                                         '${first + snapshot.data![3].serviceImage.toString()}',
                                                                         fit: BoxFit.fill,
                                                                )
                                                                ),
                           ),
                                             SizedBox(
                       height: 60,
                       child: Container(
                         color:  HexColor("#EEF9FF"),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Teeth Whitening", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ,), ),
                        ],),),
                     ),
                                                 SizedBox(height: 30,),    GestureDetector(onTap: (){
                                                  
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>     root(),));
                                                 },
                                                   child: Container(
                                                      width: double.infinity,
                                                     height:180,
                                                     child: Image.network(
                                                                                                '${first + snapshot.data![4].serviceImage.toString()}',
                                                                                                fit: BoxFit.fill,
                                                                                       )
                                                                                       ),
                                                 ),
                                               SizedBox(
                       height: 60,
                       child: Container(
                         color:  HexColor("#EEF9FF"),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Root Canal Treatment", style: TextStyle(fontSize: 20 , color:  Color.fromARGB(255, 1, 11, 66) ), ),
                        ],),),
                     ),
                                               
        
                                      // SizedBox(
                                      //   height: 25,
                                      // ),
                                    ],
                                  ),
                                  ),
                              
                              );
                            });
                      } else {
                        return Center(
                          ///child: CircularProgressIndicator(),
                        );
                      }
                    }),
        
            
        
        ],),
      ),
      ),
    );
    
  }
}
