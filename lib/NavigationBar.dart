
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:hiba_dentist/Home.dart';
import 'package:hiba_dentist/about_us.dart';
import 'package:hiba_dentist/appointment.dart';
import 'package:hiba_dentist/contact_us.dart';
import 'package:hiba_dentist/services.dart';
import 'package:get/get.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 38,
  
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);
  

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}
final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'عربى', 'locale': Locale('ar', 'SA')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
 
class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = const [
      HomePage(),
     appointment (),
    Services(),
   contact_us(),
      About_us(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // backgroundColor: Colors.black,
      body: Center(
        child: pages[_currentIndex],
        
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
         // indicatorColor: Colors.blue.shade200,
        //  backgroundColor: Colors.blue.shade500,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          
        ),
      
      
   child:   NavigationBar(
        
         
        selectedIndex: _currentIndex,
        
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.app_registration),
            icon: Icon(Icons.app_registration_outlined),
            label: 'Appointment', 
            
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.real_estate_agent),
            icon: Icon(Icons.real_estate_agent_outlined),
            label: 'Service',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.contact_page),
            icon: Icon(Icons.contact_page_outlined),
            label: 'Contact',
          ),
           NavigationDestination(
            selectedIcon: Icon(Icons.group),
            icon: Icon(Icons.group_outlined),
            label: 'About',
          ),
           
        ],
        
      
      ),
    ));
  }
}