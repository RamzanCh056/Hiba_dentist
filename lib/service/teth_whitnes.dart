import 'package:flutter/material.dart';
class tethwhitenes extends StatefulWidget {
  const tethwhitenes({ Key? key }) : super(key: key);

  @override
  State<tethwhitenes> createState() => _tethwhitenesState();
}

class _tethwhitenesState extends State<tethwhitenes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  ////  backgroundColor: Color.fromARGB(223, 255, 253, 253),
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
                          
                          Text("Teeth Whitening", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
                        ],),
                          SizedBox(height: 60,),
                 
                  
                        SizedBox(height: 60,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("No Image to Show!", style: TextStyle( fontSize: 17 ,color: Colors.grey ,fontWeight: FontWeight.bold,), ),
                       ],
                     ),
                   ),
          ],),
        ),
      ),
   );
  }
}