import 'package:flutter/material.dart';
class dental_bridge extends StatefulWidget {
  const dental_bridge({ Key? key }) : super(key: key);

  @override
  State<dental_bridge> createState() => _dental_bridgeState();
}

class _dental_bridgeState extends State<dental_bridge> {
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
                          
                          Text("Dental Bridges", style: TextStyle(fontSize: 25 , color:  Color.fromARGB(255, 1, 11, 66) ,fontWeight: FontWeight.bold,), ),
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