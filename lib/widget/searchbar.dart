import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.all(10.0),
        child:  Container(
            height: 50,
            decoration: BoxDecoration( color: Colors.red,


              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white,),
            ),

            child: Padding(padding: const EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "بحث عن المنتجات",

                  suffixIcon: Icon(Icons.add_road_rounded),
                  prefixIcon: Icon(Icons.search,color:Colors.white,),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,

                ),
              ),
            )
        )

    );
  }
}
