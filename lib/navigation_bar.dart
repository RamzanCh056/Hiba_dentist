import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Home.dart';
//final Uri _url = Uri.parse('http://drhibasaadeh.com/');

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({Key? key}) : super(key: key);
 
  @override
  _MainBottomClassState createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
 // int selectedIndex = 0;

  //list of widgets to call ontap
  // final widgetOptions = [
  //   new HomePage(),
  //    GestureDetector(
  //      onTap: _launchUrl,
  //      child: new Container( )),
  //     new Container( child: Text("Services"),),
  //   new Container( child: Text("Contact"),),
  //    new Container( child: Text("About"),),
  

  // ];

  // void onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

 // final widgetTitle = ["Home",  "Appointment, Services , Contact, About"];
//   void _launchUrl() async {
//   if (!await launchUrl(_url)) throw 'Could not launch $_url';
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.red,
     
      body: Center(
       // child: widgetOptions.elementAt(selectedIndex),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
                backgroundColor:  Color.fromARGB(255, 1, 11, 66),
       
                  fixedColor: Colors.white,
              
                //unselectedItemColor: Colors.white,
               
              
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home,),
          ),
          
          BottomNavigationBarItem(
            label: 'Appointment', 
            icon: Icon(Icons.app_registration_outlined),
          ),
        
          BottomNavigationBarItem(
            label: 'Service',
            icon: Icon(Icons.work)
          ),
         
         
            BottomNavigationBarItem(
            label: 'Contact',
            icon: Icon(Icons.contact_page),
          ),
            BottomNavigationBarItem(
            label: 'About',
            icon: Icon(Icons.real_estate_agent)
          ),
        ],
        // currentIndex: selectedIndex,
      //  fixedColor: Colors.blue,
        onTap: (value){
          if (value==0){
       
               new HomePage();
           
          }

          if(value==1){
            setState(() {
             const url = 'http://drhibasaadeh.com/'; 
                              launchURL(url);
            });
          }
        },
         
        // selectedItemColor: Colors.blue,
      //    selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 20),
      //   unselectedFontSize: 16,
        selectedIconTheme:
           IconThemeData(color: Colors.blue, ),
       unselectedItemColor: Colors.white,
         unselectedLabelStyle: TextStyle( color: Colors.white),
      ),
    );
  }
       launchURL( String url, ) async {
    if (await canLaunch(url)) {
      await launch(url, 
      forceWebView: true,
      enableJavaScript: true,
      forceSafariVC: true,

      );
    } else {
      throw 'Could not launch $url';
    }
 }
}