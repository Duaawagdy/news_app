import 'package:flutter/material.dart';
import 'package:news_app/model/cardmodel.dart';
class card extends StatelessWidget {

  const card({super.key, required this.cards});
 final cardmodel cards;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 90,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(cards.image),fit: BoxFit.fill)
          ,
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12),

        ),
        child: Center(child: Text(cards.text,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }

}