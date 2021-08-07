import 'package:flutter/material.dart';

class TopOfferCart extends StatelessWidget {
  const TopOfferCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 200,


        child:Column(
          children:[
            Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Container(height:80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:DecorationImage(
                          image:AssetImage('images/th.jpg'),
                          fit:BoxFit.cover,






                      )
                  ),
                ),
                Padding(padding:const EdgeInsets.only(top:10,left: 10),
                  child:  Column(


                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" ملخصات الامتحان",

                        style:TextStyle(fontWeight: FontWeight.w900,
                            color: Colors.black),),
                      Text("في الاضواء",
                        style:TextStyle(fontWeight: FontWeight.w900,
                            color: Colors.black),),

                    ],
                  ),
                ),

                Text("\$3.99 ",
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                      color: Colors.indigo),),
              ],),
            Padding(padding: const EdgeInsets.all(10),),
            Divider()
          ],

        ),
      );


  }
}
