import 'package:flutter/material.dart';
import 'package:flutter_app1/pedges/BookDetails.dart';
class PopularFoodCarrt extends StatelessWidget {
  const PopularFoodCarrt({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(0.0),
      child: Container(
          width: 160,
          child:InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookdetails()));
          },
          child: Card(
            child:Padding(
                padding: const EdgeInsets.only(top:10.0,left: 5),
                child: Column(
                  children:[
                    Container(height:80,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image:DecorationImage(
                              image: AssetImage("images/OIP1.jpg",),

                              fit:BoxFit.cover,

                          )
                      ),
                    ),
                    Padding(padding:const EdgeInsets.only(top:10,left: 10),
                      child:  Row(

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("كتب الصف الثالث الثانوي  ",
                                style:TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
                              Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  Row(children: [
                                    Text("4.2"),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.grey,size: 15,),

                                      ],
                                    ) ,
                                    Text("(12+)"),
                                  ],
                                  ),


                                ],),
                              SizedBox(width:30, height: 20,),

                              Row(children: [
                                Text("\$25",
                                  style:TextStyle(fontWeight: FontWeight.w900,color: Colors.black,
                                    fontSize:20, ),),

                              ],),


                            ],
                          ),
                        ],
                      ),



                ),

          ],
                  ),
                 )
      ),
    ),
    ),
    ) ;

  }
}