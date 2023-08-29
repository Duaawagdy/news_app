import 'package:flutter/material.dart';
import 'package:news_app/model/cardmodel.dart';
import 'catogrycard.dart';
class cardlist extends StatelessWidget {
  const cardlist({super.key});


  final List<cardmodel>cards =const
  [
    cardmodel(image:'assets/general.avif' , text: 'General'),
    cardmodel(image: 'assets/business.avif', text: 'business'),
    cardmodel(image: 'assets/entertaiment.avif', text: 'entertaiment'),
    cardmodel(image: 'assets/health.avif', text: 'health'),
    cardmodel(image: 'assets/science.avif', text: 'science'),
    cardmodel(image: 'assets/sports.avif', text: 'sports'),
    cardmodel(image: 'assets/technology.jpeg', text: 'technology')
];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (context,index){
            return card(cards: cards[index]);
          }),
    );
  }

}