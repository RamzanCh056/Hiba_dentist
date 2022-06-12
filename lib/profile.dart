import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hiba_dentist/NavigationBar.dart';
import 'package:hiba_dentist/download_dialiuge.dart';
import 'package:hiba_dentist/login_user.dart';
import 'package:hiba_dentist/model/my_profile.dart';
import 'package:hiba_dentist/model/pdfModel.dart';
import 'package:hiba_dentist/model/profile_model.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:loading_indicator/loading_indicator.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

bool profilelogin = false;
var pdfdata;
var hostt = 'http://drhibasaadeh.com';
var pdf;
var fileName = '/pspdfkit-flutter-quickstart-guide.pdf';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<myprofile> getprofile() async {
    // print(token.token.toString());

    var headers = {
      'Authorization': 'Token $token',
    };

    var request = await http.get(
        Uri.parse('http://drhibasaadeh.com/api/patients/user/'),
        headers: headers);

    var data = jsonDecode(request.body.toString());

    if (request.statusCode == 200) {
      print("api is hit on profile");
      return myprofile.fromJson(data);
    } else {
      print("api not hit on profile");
      return myprofile.fromJson(data);
    }
  }

  List<profileModel> photosList = [];
  Future<List<profileModel>> sliderfunction() async {
    print('Token = $token');
    var headers = {'Authorization': 'Token $token'};

    var request = await http.get(
        Uri.parse('http://drhibasaadeh.com/api/patients/appointments/'),
        headers: headers);

    var data = jsonDecode(request.body.toString());

    if (request.statusCode == 200) {
      for (Map i in data) {
        profileModel photos = profileModel(
            firstName: i['first_name'],
            lastName: i['last_name'],
            appointDate: i['appoint_date'],
            appointTime: i['appoint_time'],
            isVisited: i['is_visited']);
        photosList.add(photos);
      }

      print("api is hit on carsol");
      return photosList;
    } else {
      print("api not hit ${request.body} : ${request.statusCode}");
      return photosList;
    }
  }

  Future<pdfModel> pdfData() async {
    print('Token = $token');
    var headers = {'Authorization': 'Token $token'};

    var request = await http.get(
        Uri.parse('http://drhibasaadeh.com/api/patients/document/2/'),
        headers: headers);

    var data = jsonDecode(request.body.toString());

    if (request.statusCode == 200) {
      print("api is hit on pdf");
      return pdfModel.fromJson(data);
      // pdfdata = data['Authorization'];

    } else {
      print("api not hit pdf ${request.body} : ${request.statusCode}");
      return pdfModel.fromJson(data);
    }
  }

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

  bool _isLoadings = true;
  PDFDocument? document;
  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/shavej.pdf');

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            // appBar: AppBar(title:  Text("USER",style: TextStyle(fontSize: 18, color: Colors.white),),),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 1, 11, 66),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("USER Profile"),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () async {
                      Get.to(MaterialYou());
                      setState(() {
                        profilelogin = !profilelogin;
                        print('profilelogin=$profilelogin');
                      });
                    },
                    child: Text('App'),
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async => {
                      setState(() {
                        profilelogin = !profilelogin;
                        print('profilelogin=$profilelogin');
                      }),
                      Get.to(MaterialYou()),
                    },
                    child: Text('Logout'),
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
                ],
              ),
            ),
            body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child: FutureBuilder<pdfModel>(
                                future: pdfData(),
                                builder: (context, snapshot) {
                                  if (snapshot.data != null) {
                                    print('pdf');
                                    return ListView.builder(
                                        itemCount:
                                            snapshot.data!.prescription!.length,
                                        itemBuilder: (context, index) {
                                          pdf = hostt +
                                                  snapshot
                                                      .data!
                                                      .prescription![index]
                                                      .prescriptionPdf
                                                      .toString()
                                              //     +
                                              // fileName
                                              ;
                                          print('pdf value=$pdf');
                                          return Center();
                                          // return Text(snapshot
                                          //     .data!
                                          //     .prescription![index]
                                          //     .prescriptionPdf
                                          //     .toString());
                                        });
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                })),
                        Expanded(
                          flex: 35,
                          child: Container(
                            // height: 420,
                            child: _isLoading
                                ? Center(
                                    child: Container(
                                        width: 80,
                                        child: LoadingIndicator(
                                            indicatorType: Indicator.ballBeat,

                                            /// Required, The loading type of the widget
                                            colors: const [
                                              Color.fromARGB(255, 1, 11, 66),
                                            ],

                                            /// Optional, The color collections
                                            strokeWidth: 2,

                                            /// Optional, The stroke of the line, only applicable to widget which contains line
                                            /// Optional, Background of the widget
                                            pathBackgroundColor: Colors.blue

                                            /// Optional, the stroke backgroundColor
                                            )),
                                  )
                                : Card(
                                    elevation: 4,
                                    color: HexColor("#EEF9FF"),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            FutureBuilder<myprofile>(
                                                future: getprofile(),
                                                builder: (context, snapshot) {
                                                  if (snapshot.data != null) {
                                                    var first =
                                                        'http://drhibasaadeh.com';
                                                    //  var second=snapshot.data!.beforeImage.toString();
                                                    //  var image=first+second;
                                                    print('image');
                                                    return ListView.builder(
                                                        shrinkWrap: true,
                                                        // scrollDirection: ax,
                                                        // physics: NeverScrollableScrollPhysics(),
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return GestureDetector(
                                                            onTap: () {},
                                                            child: Column(
                                                              // mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Row(
                                                                  children: [],
                                                                ),
                                                                SizedBox(
                                                                  height: 60,
                                                                ),
                                                                CircleAvatar(
                                                                    radius:
                                                                        90.0,
                                                                    backgroundImage:
                                                                        AssetImage(
                                                                            'images/pic.png'),
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      snapshot
                                                                          .data!
                                                                          .firstName
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      snapshot
                                                                          .data!
                                                                          .lastName
                                                                          .toString(),
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                    snapshot
                                                                        .data!
                                                                        .email
                                                                        .toString(),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: HexColor(
                                                                          "#000000"),
                                                                    )),
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "Last login:",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      snapshot
                                                                          .data!
                                                                          .lastLogin
                                                                          .toString(),
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                                // SizedBox(
                                                                //   height: 25,
                                                                // ),
                                                              ],
                                                            ),
                                                          );
                                                        });
                                                  } else {
                                                    return Center(
                                                      child:
                                                          CircularProgressIndicator(),
                                                    );
                                                  }
                                                }),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Text(
                                              'Name',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text(
                                              'Appoint Date',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              'Appoint Time',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Status',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          color: Colors.black,
                                          thickness: 2,
                                        ),
                                        Expanded(
                                          child: FutureBuilder(
                                              future: sliderfunction(),
                                              builder: (context,
                                                  AsyncSnapshot<
                                                          List<profileModel>>
                                                      snapshot) {
                                                if (snapshot.data != null) {
                                                  return ListView.builder(
                                                      shrinkWrap: true,
                                                      // scrollDirection: ax,
                                                      //    physics: NeverScrollableScrollPhysics(),
                                                      itemCount:
                                                          photosList.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(4),
                                                          child:
                                                              SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Table(
                                                              defaultColumnWidth:
                                                                  FixedColumnWidth(
                                                                      85.0),
                                                              children: [
                                                                TableRow(
                                                                  // mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Column(
                                                                      children: [
                                                                        Text(snapshot
                                                                            .data![index]
                                                                            .firstName
                                                                            .toString()),
                                                                      ],
                                                                    ),
                                                                    // Column(
                                                                    //   children: [
                                                                    //     Text(snapshot.data![index].lastName
                                                                    //         .toString()),
                                                                    //   ],
                                                                    // ),
                                                                    Column(
                                                                      children: [
                                                                        Text(snapshot
                                                                            .data![index]
                                                                            .appointDate
                                                                            .toString()),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                      children: [
                                                                        Text(snapshot
                                                                            .data![index]
                                                                            .appointTime
                                                                            .toString()),
                                                                      ],
                                                                    ),
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          Get.to(
                                                                            MyAp(),
                                                                          );
                                                                        });
                                                                      },
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Text(snapshot
                                                                              .data![index]
                                                                              .isVisited
                                                                              .toString()),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                } else {
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                }
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    )))));
  }
}
