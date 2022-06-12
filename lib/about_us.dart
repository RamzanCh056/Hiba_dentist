import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_indicator/loading_indicator.dart';
class About_us extends StatefulWidget {
  const About_us({ Key? key }) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: Scaffold(    backgroundColor: Color.fromARGB(223, 255, 253, 253),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 1, 11, 66),
      //   title: Text("About us"),
      //   centerTitle: true,
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          //_isLoading
//             ? Center(
//                 child:Container(
//                   width: 80,
//              child:   LoadingIndicator(
//     indicatorType: Indicator.ballBeat, /// Required, The loading type of the widget
//     colors: const [Color.fromARGB(255, 1, 11, 66),],       /// Optional, The color collections
//     strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
//         /// Optional, Background of the widget
//     pathBackgroundColor: Colors.blue   /// Optional, the stroke backgroundColor
// )

//                 ),
               
//               ):
          
           ListView(children: [
                      SizedBox(height: 30,),
                        Row(
                          
                          children: [
                          
                          //Text("ABOUT US", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                        //  SizedBox(height: 30,),
                   Row(
                          
                          children: [
                          
                          Text("About Us Hiba Saadeh:", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                        Container(height: 260,
                        child:  Image(image: AssetImage('images/aboutus.jpg',), fit: BoxFit.fill,),
                        ),
                        SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Text("1. About us Testing", style: TextStyle( fontSize: 17 ,color: Colors.grey ,fontWeight: FontWeight.bold,), ),
                       ],
                     ),
                   ),
          ],),
        ),
      ),
   )
    );
  }
}