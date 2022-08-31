import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/home/food_page_body.dart';
import 'package:flutter_delivery_app/utils/colors.dart';
import 'package:flutter_delivery_app/widgets/big_text.dart';
import 'package:flutter_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    children: [
                      BigText(text: "India", color: AppColors.mainColor),
                    Row(
                      
                      children: [
                        SmallText(text: "vizag", color: Colors.black54,),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
