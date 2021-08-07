import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Bookdetails extends StatefulWidget {
  @override
  _BookdetailsState createState() => _BookdetailsState();
}

class _BookdetailsState extends State<Bookdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.redAccent,
      title: Text("كتب الصف الثالث الثانوي"),


    ),

      body: Card(
          child:Padding(
              padding: const EdgeInsets.only(top:10.0,left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Container(height:300,
                    width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                          image: AssetImage("images/OIP2.jpg",),

                          fit:BoxFit.cover,

                        )
                    ),
                  ),
                Center(
                  child:
                  Padding(padding:const EdgeInsets.only(top:10,left: 10),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("احياء الصف الثالث الثاانوي",
                            style:TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize:28,),),
                          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                            children: [
                              Row(children: [
                                Text("5.9"),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.indigo,size: 15,),
                                    Icon(Icons.star,color: Colors.indigo,size: 15,),
                                    Icon(Icons.star,color: Colors.indigo,size: 15,),
                                    Icon(Icons.star,color: Colors.indigo,size: 15,),
                                    Icon(Icons.star,color: Colors.indigo,size: 15,),
                                    Icon(Icons.star,color: Colors.grey,size: 15,),


                                  ],
                                ) ,

                              ],
                              ),

                            ],),
                          SizedBox(width:40, height: 40,),

                          Row(children: [
                            Text("\$3",
                              style:TextStyle(fontWeight: FontWeight.w900,color: Colors.black,
                                fontSize:20, ),),

                          ],)




                        ],
                      )
                    ],
                  ),

                ),
                )
                ],
              )
          )
      ),





    );

  }
}
