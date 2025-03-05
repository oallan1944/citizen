import 'package:citizen_bet/utils/colors.dart';
import 'package:citizen_bet/widgets/big_text.dart';
import 'package:flutter/material.dart';

class Highlights extends StatefulWidget {
  const Highlights({super.key});

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  PageController pageController = PageController(viewportFraction: 0.9) ;// controll views so we can have left and right sliders
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: index.isEven? AppColors.cardHighlight: AppColors.cardColor2 ,

        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/asset_images/asset_icons/premier_league_icon.jpeg'
          )
          )
      ),
    ),
       Align(
        alignment: Alignment.bottomCenter,
         child: Container(
               height: 140,
               margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
               decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.cardColor1 ,
               ),

               child: Container(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    BigText(text: 'Premier League Today'),
                    SizedBox(height: 10,),
                    
                  ],
                ),
               ),
             ),
       ),
      ],
    );
  }
}