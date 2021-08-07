import 'package:flutter/material.dart';
import 'package:flutter_app1/widget/mytitle.dart';
import 'package:flutter_app1/widget/topoffercart.dart';
class BookBYCart extends StatefulWidget {
  final String title;
  BookBYCart(this.title);
  @override
  _BookBYCartState createState() => _BookBYCartState();
}

class _BookBYCartState extends State<BookBYCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body:Padding(
       padding: const EdgeInsets.all(8.0),
       child:Column(
     children: [
       MyTitle(title:widget.title + "  Book  ",fontSize: 20),
     Container(
         height: MediaQuery.of(context).size.height * 0.8,
         child: ListView.builder(itemBuilder: (context,index){
           return TopOfferCart();
         }),
       ),


      ],
    ),
     )
         );
  }


}



