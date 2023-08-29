import 'package:flutter/material.dart';
import 'package:news_app/widgets/cardlist.dart';
import 'package:news_app/widgets/catogrycard.dart';
import 'package:news_app/widgets/news_tile.dart';
//import 'package:js/js.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';
class home extends StatelessWidget {
const home({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    title:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('News',style: TextStyle(color: Colors.black),),
        Text('Could',style: TextStyle(color: Colors.orange),),
      ],
    )
),
  body:
  const Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: cardlist(),),
        SliverToBoxAdapter(child: SizedBox(height: 32,),),
        NewsListViewBuilder(
          category: 'health',
        ),


  ]))

);
}
}