import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';
class Dental extends StatefulWidget {
  const Dental({ Key? key }) : super(key: key);

  @override
  State<Dental> createState() => _DentalState();
}

class _DentalState extends State<Dental> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(   // backgroundColor: Color.fromARGB(223, 255, 253, 253),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 1, 11, 66),
      //   title: Text("About us"),
      //   centerTitle: true,
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
             Row( mainAxisAlignment: MainAxisAlignment.start,
             children: [
              IconButton(onPressed: (){   Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
           ],),
                      SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          
                          Text("Dental Implants", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                          SizedBox(height: 60,),
                 
                       Stack(children: [
                        Container(
                          width: double.infinity,
                          child: Row(children: [
                        
                           Expanded(
                                      flex: 1,
                                      child: BeforeAfter(
                                        beforeImage: Image.asset('images/before.jpg', fit:  BoxFit.fill,),
                                        afterImage: Image.asset('images/after.jpg', fit:  BoxFit.fill,),
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
                        SizedBox(height: 60,),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: double.infinity,
                     child:   Text("The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment. The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment. The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment.The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment." , style: TextStyle( fontSize: 17 ,color:Color.fromARGB(255, 1, 11, 66)  ,fontWeight: FontWeight.bold,), ),),
                 ),
                  SizedBox(height: 30,),
                            Stack(children: [
                        Container(
                          width: double.infinity,
                          child: Row(children: [
                        
                           Expanded(
                                      flex: 1,
                                      child: BeforeAfter(
                                        beforeImage: Image.asset('images/before.jpg', fit:  BoxFit.fill,),
                                        afterImage: Image.asset('images/after.jpg', fit:  BoxFit.fill,),
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
                        SizedBox(height: 60,),
                        Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: double.infinity,
                     child:   Text("The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment." , style: TextStyle( fontSize: 17 ,color:Color.fromARGB(255, 1, 11, 66)  ,fontWeight: FontWeight.bold,), ),),
                 ),
                 SizedBox(height: 30,),
                      Stack(children: [
                        Container(
                          width: double.infinity,
                          child: Row(children: [
                        
                           Expanded(
                                      flex: 1,
                                      child: BeforeAfter(
                                        beforeImage: Image.network('http://drhibasaadeh.com/media/service_bef_aft_img/service-1.jpg', fit:  BoxFit.fill,),
                                        afterImage: Image.network('http://drhibasaadeh.com/media/service_bef_aft_img/service-2.jpg', fit:  BoxFit.fill,),
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
                    //     Stack(children: [
                    //     Row(children: [

                    //       Container(height: 240,
                    //       width: 195,
                    //     child: Image.network("http://drhibasaadeh.com/media/service_bef_aft_img/service-1.jpg",fit: BoxFit.fill,),
                        
                    //     ),
                    //      Container(height: 240,
                    //      width:195,
                    //     child: Image.network("http://drhibasaadeh.com/media/service_bef_aft_img/service-2.jpg",fit: BoxFit.fill,),
                        
                    //     ),

                    //     ],),

                    //     Positioned(
                    //       left: 15, bottom: 0, top: 0, right: 10,
                    //       child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                            
                    //        Text("Before", style: TextStyle(fontSize: 22 , color: Colors.white ,fontWeight: FontWeight.bold,), ),
                           
                    //          Text("After", style: TextStyle(fontSize: 22 , color: Colors.white ,fontWeight: FontWeight.bold,), ),
                    //     ],))
                    // ],),
                     SizedBox(height: 60,),
                      Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: double.infinity,
                     child:   Text("The right expertise and technology enable us to undertake advanced smile makeovers, full mouth dental implants, zirconia and CAD CAM crowns, laser dentistry and more. Our in-house 3D CT scan machine ensures flawless accuracy in diagnosis and treatment." , style: TextStyle( fontSize: 17 ,color:Color.fromARGB(255, 1, 11, 66)  ,fontWeight: FontWeight.bold,), ),),
                 ),
          ],),
        ),
      ),
   );
  }
}