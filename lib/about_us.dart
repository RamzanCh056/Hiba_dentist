import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
          child:_isLoading
            ? Center(
                child: Container(
             child:     SpinKitFadingCircle(
               size: 60,
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
)
                ),
               
              ):
          
           ListView(children: [
                      SizedBox(height: 30,),
                        Row(
                          
                          children: [
                          
                          Text("ABOUT US___ _", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                          SizedBox(height: 60,),
                   Row(
                          
                          children: [
                          
                          Text("About Us Hiba Saadeh:", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                        Container(height: 260,
                        child: Image.network("http://drhibasaadeh.com/media/uploads/2022/04/04/carousel-1_nwymlkm.jpg",fit: BoxFit.fill,),
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