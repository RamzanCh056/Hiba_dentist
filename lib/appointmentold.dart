// // @dart=2.9
// import 'dart:convert';
// import 'dart:io';
// import 'package:direct_select/direct_select.dart';
// import 'package:flutter_picker/flutter_picker.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:get/get_navigation/src/snackbar/snackbar.dart';
// import 'package:hiba_dentist/Home.dart';
// import 'package:hiba_dentist/NavigationBar.dart';
// import 'package:hiba_dentist/model/appointment_date.dart';
// import 'package:hiba_dentist/model/availableSlots.dart';
// import 'package:hiba_dentist/model/slots.dart';
// import 'package:intl/intl.dart';
// // import 'PickerData.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:hiba_dentist/filelist.dart';
// import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart' ;
// import 'package:flutter_material_pickers/flutter_material_pickers.dart';


// var result;
// var appointmentslot= "";

// //You can use any Widget
// class MySelectionItem extends StatelessWidget {
//   final String title;
//   final bool isForList;

//   const MySelectionItem({Key key, this.title, this.isForList = true})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 60.0,
//       child: isForList
//           ? Padding(
//               child: _buildItem(context),
//               padding: EdgeInsets.all(10.0),
//             )
//           : Card(
//               margin: EdgeInsets.symmetric(horizontal: 10.0),
//               child: Stack(
//                 children: <Widget>[
//                   _buildItem(context),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Icon(Icons.arrow_drop_down),
//                   )
//                 ],
//               ),
//             ),
//     );
//   }

//   _buildItem(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       alignment: Alignment.center,
//       child: Text(title),
//     );
//   }
// }

// //import 'package:open_file/open_file.dart';
// class appointment extends StatefulWidget {
//   const appointment({Key key}) : super(key: key);

//   @override
//   State<appointment> createState() => _appointmentState();
// }

// class _appointmentState extends State<appointment> {
//   @override
//   Widget build(BuildContext context) {
//     return MyApp();
//   }
// }

// class MyApp extends StatefulWidget {
//   // feedback function

//   const MyApp({Key key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var age = 25;
//   List<appointment_date> photoList = [];
//   final _formKey = GlobalKey<FormState>();
//   List<slots> slotsList = [];
//   List<availableSlots> availableSlotsList = [];
//   List<String> availableSlotsListString = [];
//   availableSlots selectedSlot;
//   Future<List<appointment_date>> servicesfunction() async {
//     var headers = {
//       'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b'
//     };

// // var request = http.Request('GET', Uri.parse('http://drhibasaadeh.com/api/patients/beforeAfterImg/'));
//     var request = await http.get(
//         Uri.parse('http://drhibasaadeh.com/api/patients/appointmentHoliday/'),
//         headers: headers);
// // request.headers.addAll(headers);

// // http.StreamedResponse response = await request.send();
//     var data = jsonDecode(request.body.toString());

//     if (request.statusCode == 200) {
//       for (Map i in data) {
//         appointment_date photos = appointment_date(
//             appointDate: i['appoint_date'],
//             addDate: i['add_date'],
//             updateDate: i['update_date']);
//         photoList.add(photos);
//       }

//       // print(await response.stream.bytesToString());
//       print("api is hit on carsol");
//       return photoList;
//     } else {
//       // print(response.reasonPhrase);
//       print("api not hit");
//       return photoList;
//     }
//   }

//   DateTime _minDate, _maxDate;
//   @override
//   void initState() {
//     _minDate = DateTime(2020, 0, 20, 9, 0, 0);
//     _maxDate = DateTime(2020, 0, 25, 9, 0, 0);
//     super.initState();
//   }

//   // This widget is the root of your application.
//      var firstname = "";
//   var lastname = "";
//   var mobile = "";
//   var email = "";
  
//     TextEditingController firstnameController = TextEditingController();
//   TextEditingController lastnameController = TextEditingController();
//     TextEditingController  mobileController = TextEditingController();
//      TextEditingController emailController = TextEditingController();
//       TextEditingController appointmentController = TextEditingController();
//        @override
 
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     emailController.dispose();
//     firstnameController.dispose();
//     mobileController.dispose();
//     appointmentController.dispose();
//      lastnameController.dispose();

   
//       // _marker.addAll(_List);
//     super.dispose();
    
//   }
//   sendAppointment(String first_name, String last_name, String mobile_no, String email_id, String appoint_date, String appointmentslos) async{
//      try{
//        print('Date = $appoint_date');
//        var date=appoint_date.split('/');
//         print('Date 1 ${date[0]} Date 1 ${date[1]} Date 1 ${date[2]}');
//         var datecombine="${date[2]}-${date[0]}-${date[1]}";
//          print('Slot = $appointmentslos');
//           var app=appointmentslos.split(":");
//         //  var app=appointmentslos.toString().splitMapJoin(appointmentslos);
//         //  var app1=appointmentslos.split('[');
//         var slot;
//         if(app.length==3){
//           slot='${app[0][1]}${app[0][2]}';
//         }
//          if(app.length==2){
//           slot='${app[0][1]}';
//         }
        
//           print('$slot');
//            print('$datecombine');
//             print('$first_name');
//                print('$last_name');
//                   print('$email_id');
//                     print('$mobile_no');

// var headers = {
//   'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b',
//   'Content-Type': 'application/json',
//   'Cookie': 'csrftoken=FqNJnPS7YzpZtOFcTTsmQNPDWYQBKL6gd9rlq50wrDLV1sHSagbTSsZMQitQby07; sessionid=w7p7b0gz4rjq7z5tud3x7v7gqvvbwy13'
// };

       

//       var data={'first_name':first_name,'last_name':last_name,'mobile_no':mobile_no,'email_id':email_id,'appoint_date':datecombine.toString(),'app_slot_id':slot.toString()};


//       //It is used for raw data;
//       var data1=json.encode(data);
//       var response=await post(Uri.parse('http://drhibasaadeh.com/api/patients/appointment/'),
//           body: data1,headers: headers
//       );
//       print('Status Code= ${response.body}');
//       if(response.statusCode==201){
//         print('Message Send Successfully : 201');
//             Get.snackbar(
//               "Congratulations",
//                "", 
//                snackPosition: SnackPosition.BOTTOM,
//                backgroundColor: Colors.black,
//                borderRadius: 20,
//                margin: EdgeInsets.all(15),
//                colorText: Colors.green,
//                messageText: Text("Your appointment is booked open your email for details", style: TextStyle(color: Colors.white),),
//                duration: Duration(seconds: 4),
//                isDismissible: true,
              
//                forwardAnimationCurve: Curves.easeOutBack,
                 
//                );
         
//         var data2=jsonDecode(response.body.toString());
//         // Fluttertoast.showToast(msg: '${data2['message'].toString()}');
//         print(data);
//         return true;
        
//       }
//       else if(response.statusCode==200){
//         print('Register code : 200');
//         var data2=jsonDecode(response.body.toString());
//         // Fluttertoast.showToast(msg: '${data2['message'].toString()}');
//         print(data);
//         return false;
//       }
//       else{
//         print('Appointment Send Failed  : else');
//         var data2=jsonDecode(response.body.toString());
//         // Fluttertoast.showToast(msg: '${data2['message'].toString()}');

//         print(data);
//         return false;
//       }

//     }catch(e){
//        print('Register code : $e');
//           Get.snackbar(
//               "Already Booked",
//                "", 
//                snackPosition: SnackPosition.BOTTOM,
//                backgroundColor: Colors.black,
//                borderRadius: 20,
//                margin: EdgeInsets.all(15),
//                colorText: Colors.red,
//                messageText: Text("Appointment is already booked plz try another slots", style: TextStyle(color: Colors.white),),
//                duration: Duration(seconds: 4),
//                isDismissible: true,
              
//                forwardAnimationCurve: Curves.easeOutBack,
                 
//                );
        
//       // Fluttertoast.showToast(msg: e.toString());
//       return false;
//     }

//   }
   
   
//    void appointment(String first_name, String last_name, String mobile_no, String email_id, String appoint_date, String appointmentslos ) async{
//        print('Date = $appoint_date');
//        var date=appoint_date.split('/');
//         print('Date 1 ${date[0]} Date 1 ${date[1]} Date 1 ${date[2]}');
//         var datecombine="${date[2]}-${date[0]}-${date[1]}";
//          print('Slot = $appointmentslos');
//           var app=appointmentslos.split(":");
//         //  var app=appointmentslos.toString().splitMapJoin(appointmentslos);
//         //  var app1=appointmentslos.split('[');
//         var slot;
//         if(app.length==3){
//           slot='${app[0][1]}${app[0][2]}';
//         }
//          if(app.length==2){
//           slot='${app[0][1]}';
//         }
        
//           print('$slot');
//            print('$datecombine');
//             print('$first_name');
//                print('$last_name');
//                   print('$email_id');
//                     print('$mobile_no');

//      var headers = {
//   'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b',
//   'Content-Type': 'application/json',
//   'Cookie': 'csrftoken=mck0ryxrOYqV9k2XXIGYpCW2K7sbaN3Yld0iHdAYymUuoSVTWvVzKAommj6Ssrhy; sessionid=w7p7b0gz4rjq7z5tud3x7v7gqvvbwy13'
// };
// var request = http.Request('POST', Uri.parse('http://drhibasaadeh.com/api/patients/appointment/'));
// request.body = json.encode({
//   "first_name": first_name,
//   "last_name": last_name,
//   "mobile_no":mobile_no,
//   "email_id": email_id,
//   "appoint_date": datecombine.toString(),
//   "app_slot_id":slot.toString()
// });
// // request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 201) {
//   print(await response.stream.bytesToString());
//   print("api is hit appointment");
// }
// else {
//   print(response.reasonPhrase);
//    print("api is not hit on appointment");
// }


//    }

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Color.fromARGB(255, 1, 11, 66),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
            
//             children: [
//               Row( mainAxisAlignment: MainAxisAlignment.start,
//              children: [
//               IconButton(onPressed: (){  Get.to(MaterialYou());}, icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
//            ],),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   'We Are A Certified and Award Winning Dental Clinic You Can Trust',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Form(
//                   key: _formKey,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Container(
                    
//                     decoration: BoxDecoration(color: HexColor("#06a3da"),),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Center(
//                             child: Text(
//                               'Make Appointment',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               margin: EdgeInsets.symmetric(vertical: 10.0),
//                               child: TextFormField(
//                                 //  autocorrect: true,
              
//                                 decoration: InputDecoration(
//                                   hintText: 'First Name',
//                                   prefixIcon: Icon(Icons.person),
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border: OutlineInputBorder(),
//                                   errorStyle: TextStyle(
//                                       color: Colors.redAccent, fontSize: 15),
//                                   filled: true,
//                                   fillColor: HexColor("#EEF9FF"),
//                                   enabledBorder: OutlineInputBorder(
//                                     //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                 ),
//                                  controller: firstnameController,
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please Enter Name';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 0, bottom: 8),
//                             child: Container(
//                               child: TextFormField(
//                                 //  autocorrect: true,
              
//                                 decoration: InputDecoration(
//                                   hintText: 'Last Name',
//                                   prefixIcon: Icon(Icons.person_outline_sharp),
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border: OutlineInputBorder(),
//                                   errorStyle: TextStyle(
//                                       color: Colors.redAccent, fontSize: 15),
//                                   filled: true,
//                                   fillColor: HexColor("#EEF9FF"),
//                                   enabledBorder: OutlineInputBorder(
//                                     //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                 ),
//                                  controller: lastnameController,
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please Enter Name';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 8, bottom: 8),
//                             child: Container(
//                               child: TextFormField(
//                                 //  autocorrect: true,
//                keyboardType: TextInputType.number,
//                                 decoration: InputDecoration(
//                                   hintText: 'Your Mobile',
                                  
//                                   prefixIcon: Icon(Icons.mobile_friendly),
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border: OutlineInputBorder(),
//                                   errorStyle: TextStyle(
//                                       color: Colors.redAccent, fontSize: 15),
//                                   filled: true,
//                                   fillColor: HexColor("#EEF9FF"),
//                                   enabledBorder: OutlineInputBorder(
//                                     //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                 ),
//                                  controller: mobileController,
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please Enter Mobile number';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 8, bottom: 8),
//                             child: Container(
//                               child: TextFormField(
//                                 //  autocorrect: true,
              
//                                 decoration: InputDecoration(
//                                   hintText: 'Your Email',
//                                   prefixIcon: Icon(Icons.email),
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border: OutlineInputBorder(),
//                                   errorStyle: TextStyle(
//                                       color: Colors.redAccent, fontSize: 15),
//                                   filled: true,
//                                   fillColor: HexColor("#EEF9FF"),
//                                   enabledBorder: OutlineInputBorder(
//                                     //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                     borderSide: BorderSide(
//                                         color: HexColor("#EEF9FF"), width: 2),
//                                   ),
//                                 ),
//                                  controller: emailController,
//                                 validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please Enter Email';
//                           } else if (!value.contains('@')) {
//                             return 'Please Enter Valid Email';
//                           }
//                           return null;
//                         },
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 8, bottom: 8),
//                             child: Container(
//                               child: TextFormField(
                              
//                                 focusNode: AlwaysDisabledFocusNode(),
//                                controller: appointmentController,
//                                 decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.date_range),
//                                     border: OutlineInputBorder(),
//                                     errorStyle: TextStyle(
//                                         color: Colors.redAccent, fontSize: 15),
//                                     filled: true,
//                                     fillColor: HexColor("#EEF9FF"),
//                                     enabledBorder: OutlineInputBorder(
//                                       //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                       borderSide: BorderSide(
//                                           color: HexColor("#EEF9FF"), width: 2),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius:
//                                           BorderRadius.all(Radius.circular(10.0)),
//                                       borderSide: BorderSide(
//                                           color: HexColor("#EEF9FF"), width: 2),
//                                     ),
//                                     hintText: 'Appointment Date'),
              
//                                 onTap: () => _selectDate(),
//                                 //  autocorrect: true,
              
                                
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please Enter date';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               //  Card(
//                               //   margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
//                               //   child: SfDateRangePicker(
//                               //     view: DateRangePickerView.month,
//                               //     //selectionMode: DateRangePickerSelectionMode.range,
//                               //     minDate: _minDate,
//                               //     maxDate: _maxDate,
//                               //     onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
//                               //       final dynamic value = args.value;
//                               //     },
//                               //     onViewChanged: (DateRangePickerViewChangedArgs args) {
//                               //       final PickerDateRange visibleDates = args.visibleDateRange;
//                               //       final DateRangePickerView view = args.view;
//                               //     },
//                               //   ),
//                               // ),
//                             ),
//                           ),
//                           /////////////
//                           ///
//                             Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 8, bottom: 8),
//                             child: StatefulBuilder(builder: (context, setState) {
//                               return Container(
//                               child: TextFormField(
//                                 focusNode: AlwaysDisabledFocusNode(),
//                               //  controller: appointmentController,
//                                 decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.timer),
//                                     border: OutlineInputBorder(),
//                                     errorStyle: TextStyle(
//                                         color: Colors.redAccent, fontSize: 15),
//                                     filled: true,
//                                     fillColor: HexColor("#EEF9FF"),
//                                     enabledBorder: OutlineInputBorder(
//                                       //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                       borderSide: BorderSide(
//                                           color: HexColor("#EEF9FF"), width: 2),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius:
//                                           BorderRadius.all(Radius.circular(10.0)),
//                                       borderSide: BorderSide(
//                                           color: HexColor("#EEF9FF"), width: 2),
//                                     ),
//                                       hintText: '  $appointmentslot' ),
                                        
//                                 onTap: () async {   showPickerArray(context);
//                                 //  setState(() async{
//                                 //    await
                                     
//                                 //     });
                                
//                                 },
//                                 //  autocorrect: true,
                                        
                                
                               
//                               ),
                             
//                             );
//                             },)
                            
//                           ),
//                           // Padding(
//                           //   padding: const EdgeInsets.only(
//                           //       left: 8, right: 8, top: 8, bottom: 8),
//                           //   child: Container(
//                           //     decoration: BoxDecoration(
//                           //         color: Color.fromARGB(255, 253, 253, 253),
//                           //         borderRadius: BorderRadius.circular(4)),
//                           //     child: ListTile(
//                           //       title:Text('Appointment Slots'),
//                           //       onTap: () {
//                           //         showPickerArray(context);
//                           //       },
//                           //     ),
              
//                           //     // child: DirectSelect(
//                           //     //     itemExtent: 35.0,
//                           //     //     selectedIndex: selectedIndex1,
//                           //     //     backgroundColor: Colors.red,
//                           //     //     child: MySelectionItem(
//                           //     //       isForList: false,
//                           //     //       title: "abc",
//                           //     //     ),
//                           //     //     onSelectedItemChanged: (index) {
//                           //     //       setState(() {
//                           //     //         selectedIndex1 = index;
//                           //     //       });
//                           //     //     },
//                           //     //     items: _buildItems1()),
              
//                           //     //   ListTile(
//                           //     // title: Text('Appointment Slots'),
//                           //     // onTap: () {
//                           //     //   print("${availableSlotsList} newlist");
              
//                           //     // print("myslots $slotsList");
//                           //     // showMaterialScrollPicker<availableSlots>(
//                           //     //   context: context,
//                           //     //   title: 'Pick available slot',
//                           //     //   items: availableSlotsList,
//                           //     //   selectedItem: selectedSlot!,
//                           //     //   onChanged: (value) =>
//                           //     //       setState(() => selectedSlot = value),
//                           //     // );
              
//                           //     // showPickerDate(context);
//                           //     //   },
//                           //     // ),
//                           //     // TextFormField(
//                           //     //   //  autocorrect: true,
              
//                           //     //   decoration: InputDecoration(
//                           //     //     hintText: 'Appointment Slot',
//                           //     //     prefixIcon: Icon(Icons.person),
//                           //     //     hintStyle: TextStyle(color: Colors.grey),
//                           //     //     border: OutlineInputBorder(),
//                           //     //     errorStyle: TextStyle(
//                           //     //         color: Colors.redAccent, fontSize: 15),
//                           //     //     filled: true,
//                           //     //     fillColor: HexColor("#EEF9FF"),
//                           //     //     enabledBorder: OutlineInputBorder(
//                           //     //       //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                           //     //       borderSide: BorderSide(
//                           //     //           color: HexColor("#EEF9FF"), width: 2),
//                           //     //     ),
//                           //     //     focusedBorder: OutlineInputBorder(
//                           //     //       borderRadius:
//                           //     //           BorderRadius.all(Radius.circular(10.0)),
//                           //     //       borderSide: BorderSide(
//                           //     //           color: HexColor("#EEF9FF"), width: 2),
//                           //     //     ),
//                           //     //   ),
//                           //     //   // controller: nameController,
//                           //     //   validator: (value) {
//                           //     //     if (value == null || value.isEmpty) {
//                           //     //       return 'Please Enter Name';
//                           //     //     }
//                           //     //     return null;
//                           //     //   },
//                           //     // ),
//                           //   ),
//                           // ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 8, right: 8, top: 8, bottom: 8),
//                             child: MaterialButton(
//                               height: 60,
//                               color: Color.fromARGB(255, 1, 11, 66),
//                               onPressed: () {
//                                  if (_formKey.currentState.validate()) {
//                                 setState(() {
//                                email = emailController.text;
//                                firstname=firstnameController.text;
//                                lastname= lastnameController.text;
//                                mobile= mobileController.text;
                           
                        
//                                 });
                               
                                  

                              
                  
                             
//                                     servicesfunction();
//                                 sendAppointment(firstnameController.text, lastnameController.text, mobileController.text, emailController.text, appointmentController.text.toString() ,appointmentslot.toString());
//                               }
                               
                               
//                               },
//                               child: Text(
//                                 'Make Appointment',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           FutureBuilder(
//                               future: servicesfunction(),
//                               builder: (context,
//                                   AsyncSnapshot<List<appointment_date>>
//                                       snapshot) {
//                                 if (snapshot.data != null) {
//                                   var first = 'http://drhibasaadeh.com';
//                                   return Center();
//                                 } else {
//                                   return Center(
//                                     child: CircularProgressIndicator(),
//                                   );
//                                 }
//                               }),
//                           FutureBuilder(
//                               future: slot(),
//                               builder:
//                                   (context, AsyncSnapshot<List<slots>> snapshot) {
//                                 if (snapshot.data != null) {
//                                   var first = 'http://drhibasaadeh.com';
//                                   return Center();
//                                 } else {
//                                   return Center(
//                                     child: CircularProgressIndicator(),
//                                   );
//                                 }
//                               }),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   int selectedIndex1 = 0;

//   List<Widget> _buildItems1() {
//     print("${availableSlotsList} _build");
//     return availableSlotsList
//         .map((val) => MySelectionItem(
//               title: val.name,
//             ))
//         .toList();
//   }

//   DateTime dateTime = DateTime.now();
//   TextEditingController AgeController = TextEditingController();
//   bool _decideWhichDayToEnable(DateTime day) {
//     if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
//         day.isBefore(DateTime.now().add(Duration(days: 10))))) {
//       return true;
//     }
//     return false;
//   }

//   DateFormat dateFormat = DateFormat("yyyy-MM-dd");

//   String sanitizeDateTime(DateTime dateTime) => dateFormat.format(dateTime);
//   _selectDate() async {
//     var firstDate = photoList.first.appointDate?.split('-');

//     print("mydate" + "$firstDate");
//     print("mydate" +
//         "${DateTime(int.parse(firstDate[0]), int.parse(firstDate[1]), int.parse(firstDate[2]))}");
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: DateTime(int.parse(firstDate[0]), int.parse(firstDate[1]),
//             int.parse(firstDate[2])),
//         initialDatePickerMode: DatePickerMode.day,
//         firstDate: 
//         DateTime(2022),
//         lastDate: DateTime(2060),
//         selectableDayPredicate: (DateTime val) {
//           String sanitized = sanitizeDateTime(val);
//           bool result = photoList
//               .where((element) => element.appointDate == sanitized)
//               .isNotEmpty;
//           print("sanitized" + sanitized + result.toString());
//           return result;
//         });
//     // _decideWhichDayToEnable(dateTime);
//     if (picked != null) {
//       dateTime = picked;
//       //assign the chosen date to the controller
//       appointmentController.text = DateFormat.yMd().format(dateTime);
//       var headers = {
//         'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b'
//       };
//       var particularDaySlots = await http.get(
//           Uri.parse(
//               'http://drhibasaadeh.com/api/patients/appointmentSlot/${dateTime}/slot/'),
//           headers: headers);

// // request.headers.addAll(headers);

// // http.StreamedResponse response = await request.send();
//       var data = jsonDecode(particularDaySlots.body.toString());

//       // if (particularDaySlots.statusCode == 200) {
//       //   for (Map i in data) {
//       //     slot availableSlot =
//       //         slot(id: i['id'], status: i['staus'], time: i['time']);
//       //     slotsList.add(availableSlot);
//       //   }
//       // }
//     }
//   }

//   showPickerArray(context) {
//     print("newobject ${availableSlotsList}");

//     if (availableSlotsListString.length > 0) {
//       availableSlotsListString.clear();
//     }

//     availableSlotsList.forEach((element) {
//       availableSlotsListString.add(element.name);
//     });
//     setState(() {
      
//     });
//     new Picker(
//         adapter: PickerDataAdapter<String>(
//             pickerdata: availableSlotsListString.toSet().toList(),
//             isArray: false),
//         hideHeader: true,
//         title: new Text("Please Select"),
        
//         onConfirm: (Picker picker, List value) {
//         setState(() {
//             print('dfgtrg'+value.toString());
//           print(picker.getSelectedValues());
//           print("picker"+picker.toString());
//            appointmentslot= picker.getSelectedValues().toString();
//            print('your appointment slot'+appointmentslot);
//         });
//         }).showDialog(context);
//         setState(() {
          
//         });
//   }

//   Future<List<slots>> slot() async {
//     var headers = {
//       'Authorization': 'Bearer 9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b'
//     };
//     DateFormat dateFormat = DateFormat("yyyy-MM-dd");

//     String sanitizeDateTime(DateTime dateTime) => dateFormat.format(dateTime);
// // var request = http.Request('GET', Uri.parse('http://drhibasaadeh.com/api/patients/beforeAfterImg/'));
//     var request = await http.get(
//         Uri.parse(
//             'http://drhibasaadeh.com/api/patients/appointmentSlot/${sanitizeDateTime(dateTime)}/slot/'),
//         headers: headers);
// // request.headers.addAll(headers);

// // http.StreamedResponse response = await request.send();
//     var data = jsonDecode(request.body.toString());

//     if (request.statusCode == 200) {
//       for (Map i in data) {
//         slots availableSlot =
//             slots(id: i['id'], status: i['status'], time: i['time']);
//         slotsList.add(availableSlot);
//       }
//       var list = slotsList.where((element) => element.status == true).toList();

//       if (availableSlotsList.length > 0) {
//         availableSlotsList.clear();
//       }
//       list.forEach((slots a) => {
//             if (a.status)
//               {availableSlotsList.add(availableSlots(name: a.time.toString()))}
//           });

//       print(availableSlotsList.first.name);
//       // print(await response.stream.bytesToString());
//       print("api is hit on carsol");
//       return slotsList;
//     } else {
//       // print(response.reasonPhrase);
//       print("api not hit");
//       var list = slotsList.where((element) => element.status == true).toList();
//       list.forEach((slots a) =>
//           availableSlotsList.add(availableSlots(name: a.time.toString())));
//       return slotsList;
//     }
//   }
// }

// class AlwaysDisabledFocusNode extends FocusNode {
//   @override
//   bool get hasFocus => false;
// }
