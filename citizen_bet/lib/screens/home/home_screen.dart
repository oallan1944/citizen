

import 'package:citizen_bet/screens/home/highlights.dart';
import 'package:citizen_bet/screens/home/trending_events.dart';
import 'package:citizen_bet/utils/colors.dart';
import 'package:citizen_bet/widgets/main_text.dart';
import 'package:citizen_bet/widgets/text_button1.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return   Scaffold(
  backgroundColor: AppColors.cardColor4,
  appBar: AppBar(
  backgroundColor: AppColors.cardColor4,
  title: 
     Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton1(    
                            
          onPressed: (){}, buttonText: 'Responsible Gambling',
            buttonColor: AppColors.cardColor4,
            borderColor: AppColors.cardColor4,
            textColor: Colors.white60,
            borderRadius: 25,
            fontSize: 12,
                ),
              ],
            ),
          ) ,

          body: Container(
           // margin: EdgeInsets.only(top: 10),
            child: Column(
              
              children: [
                 Container(
                  color: AppColors.cardColor2,
                   child: Row( 
                                                  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                          
                     Container(
                      margin: EdgeInsets.only(top: 10),
                       child: TextButton1(                 
                        onPressed: (){}, buttonText: 'Offers',
                          buttonColor: AppColors.cardColor2,
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          borderRadius: 20,
                          fontSize: 12,
                          ),
                     ),                                                                   
                    Center(
                      child: Image.asset('assets/asset_images/asset_icons/main_icon.jpg',
                      fit: BoxFit.cover,
                      height: 26,
                      ),
                    ) ,                                        
                    TextButton1(               
                      onPressed: (){}, buttonText: 'Join',
                        buttonColor: AppColors.cardColor2,
                        borderColor: Colors.amberAccent,
                        textColor: Colors.amberAccent,
                        borderRadius: 20,
                        fontSize: 12,
                        ),                                     
                      TextButton1(                                   
                      onPressed: (){}, buttonText: 'Sign In',
                        buttonColor: AppColors.cardColor2,
                        borderColor: const Color.fromARGB(176, 255, 255, 255),
                        textColor: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: 20,
                        fontSize: 12,
                        ),
                        ],
                      ),
                     ),
                  
                     Container(
                      color: AppColors.cardColor2,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                        TextButton1(onPressed: (){}, buttonText: 'All Sports',
                        buttonColor: AppColors.cardColor2,
                        borderColor: AppColors.cardColor2,
                        textColor: Colors.white,
                        ),
                        TextButton1(onPressed: (){}, buttonText: 'In-Play',
                        buttonColor: AppColors.cardColor2,
                        borderColor: AppColors.cardColor2,
                        textColor: Colors.white,
                        ),
                        TextButton1(onPressed: (){}, buttonText: 'Casino',
                        buttonColor: AppColors.cardColor2,
                        borderColor: AppColors.cardColor2,
                        textColor: Colors.white,
                               ),
                              ],                              
                            ),
                           ),
                          //  Container(
                          //   child: Column(
                          //     children: [
                          //       Container(
                          //         color: Colors.white12,
                          //         child: Row(
                          //           children: [
                          //              Container(
                                        
                          //                 height: 50,
                          //                 margin: EdgeInsets.only(left: 5, right: 5),
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(5),
                          //                   color: Colors.greenAccent ,
                                            
                                  
                          //                   image: DecorationImage(
                          //                     fit: BoxFit.cover,
                          //                     image: AssetImage(
                          //                       'assets/asset_images/asset_icons/premier_league_icon.jpeg'
                          //                     )
                          //                     )
                          //                 ),
                          //               ),

                          //               Container(
                          //                 child: Row(
                          //                   children: [
                          //                     MainText(text: '05/03'),
                          //                     SizedBox(width: 5,),
                          //                     MainText(text: '20:45'),
                          //                   ],
                          //                 ),
                          //               )
                          //           ],

                                    
                                    
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          //  ),
                            TrendingEvents()
                         //  Highlights() 
                        ],       
                       ),
                     ),
                  );
                }
              }