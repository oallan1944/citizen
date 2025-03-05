

import 'package:citizen_bet/utils/colors.dart';
import 'package:citizen_bet/widgets/big_text.dart';
import 'package:citizen_bet/widgets/main_text.dart';
import 'package:flutter/material.dart';

class TrendingEvents extends StatefulWidget {
  const TrendingEvents({super.key});

  @override
  State<TrendingEvents> createState() => _TrendingEventsState();
}

class _TrendingEventsState extends State<TrendingEvents> {
  PageController pageController = PageController(viewportFraction: 0.9) ;// controll views so we can have left and right sliders
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
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
    return 
        Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: index.isEven? AppColors.cardHighlight: AppColors.cardColor2 ,

        

        
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [

          




               
                Container(
                                          child: Row(
                                            children: [
                                              MainText(text: '05/03'),
                                              SizedBox(width: 5,),
                                              MainText(text: '20:45'),
                                            ],
                                          ),
                                        )



              ],
            ),
          )
        ],
      ),
    );
       
      
    
  }
}