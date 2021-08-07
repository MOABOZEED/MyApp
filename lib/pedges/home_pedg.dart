import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/sectioncard.dart';
import 'package:flutter_app1/widget/mytitle.dart';
import 'package:flutter_app1/widget/popularfoodcart.dart';
import 'package:flutter_app1/widget/searchbar.dart';
import 'package:flutter_app1/widget/topoffercart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
List icons=[Icons.book_online_outlined,Icons.menu_book_rounded,Icons.tab_outlined,Icons.star,Icons.shopping_cart_outlined];
List titles =["Online","story","Best Selling ","Favorite ","shopping"];


class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTitle(title: "Mafhom", fontSize: 40),
                SearchBar(),

                Container(
                  height: 100,

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return SectionCard(
                            icon: icons[index], title: titles[index]);
                      }),
                ),
                Padding(padding: const EdgeInsets.only(top: 0.0, bottom: 10),
                  child: MyTitle(title: "الاكثر مبيعا ", fontSize: 17),
                ),
                Container(
                  height: 200,


                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return PopularFoodCarrt();
                      }),


                ),
                Padding(padding: const EdgeInsets.only(top: 0.0, bottom: 10),
                  child: MyTitle(title: "في الاضواء", fontSize: 17),
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {

                        return TopOfferCart();
                      }

                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }

    }








