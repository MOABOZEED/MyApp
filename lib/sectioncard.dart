import 'package:flutter/material.dart';
import 'package:flutter_app1/pedges/BookBYCart.dart';
class SectionCard extends StatelessWidget {
  const SectionCard({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(right:0.0,left:8),
   child:InkWell(
     onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BookBYCart(title)));

   },
      child:Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(50)
            ),
            child: Icon( icon,color:Colors.black,size: 40,),

          ),
          Padding(padding:const EdgeInsets.only(top:10, ),
            child: Text(title,),
          )
        ],
     ),
   ) ,
    );

  }
}