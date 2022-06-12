import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:hiba_dentist/login_user.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiba_dentist/new_login.dart';
import 'package:hiba_dentist/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class newdrawerpage extends StatelessWidget {
  const newdrawerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return drawer();
  }
}

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  _launchURL() async {
    const url = 'https://instagram.com/dr.hibasaadeh?igshid=YTM0ZjI4ZDI=';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLone() async {
    const url = 'https://www.facebook.com/Dr.HibaSaadeh/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLlogin() async {
    const url = 'http://drhibasaadeh.com/login/';

    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'عربى', 'locale': Locale('ar', 'SA')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      child: Image(
                        image: AssetImage(
                          'images/logo.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 1, color: Colors.grey),
                Visibility(
                  visible: !profilelogin,
                  child: GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   profilelogin = !profilelogin;
                      // });
                      print("profilelogin=$profilelogin");
                      //   _launchURLlogin();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.login,
                        color: Colors.black,
                        size: 27,
                      ),
                      tileColor: Colors.white,
                      title: Text(
                        'Login'.tr,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      //trailing: Icon(Icons.arrow_drop_down_rounded),
                    ),
                  ),
                ),
                Visibility(
                  visible: profilelogin,
                  child: ListTile(
                    onTap: () {
                      Get.to(Profile());
                      // setState(() {
                      //   profilelogin = !profilelogin;
                      // });
                      print("profilelogin=$profilelogin");
                    },
                    leading: Icon(
                      Icons.login,
                      color: Colors.black,
                      size: 27,
                    ),
                    tileColor: Colors.white,
                    title: Text(
                      'Profile'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    //trailing: Icon(Icons.arrow_drop_down_rounded),
                  ),
                ),
                Divider(thickness: 1, color: Colors.grey),
                SizedBox(
                  height: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Follow us'.tr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    GestureDetector(
                      onTap: () {
                        _launchURLone();
                      },
                      child: ListTile(
                        leading: Container(
                          height: 30.0,
                          width: 40.0,
                          child: Image(
                            image: AssetImage("images/facebook-icon.png"),
                          ),
                        ),
                        //Icon(Icons.facebook, color: Colors.black, size: 27,),
                        tileColor: Colors.white,
                        title: Text(
                          'Facebook'.tr,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        //trailing: Icon(Icons.arrow_drop_down_rounded),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL();
                      },
                      child: ListTile(
                        leading: Container(
                          height: 30.0,
                          width: 40.0,
                          child: Image(
                            image: AssetImage("images/instagram.png"),
                          ),
                        ),
                        tileColor: Colors.white,
                        title: Text(
                          'Instagram'.tr,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        //trailing: Icon(Icons.arrow_drop_down_rounded),
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
