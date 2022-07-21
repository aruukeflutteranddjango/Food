import 'package:flutter/material.dart';
import 'package:food/constants/colors.dart';
import 'package:food/screens/details/widget/food_detail.dart';
import 'package:food/screens/details/widget/food_img.dart';
import 'package:food/screens/home/widget/custom_app_bar.dart';
import '../../models/food.dart';

class Detail extends StatelessWidget {
  final Food food;

  Detail(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_outlined,
              Icons.favorite_outlined,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food)
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 52,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(
                  food.quantity.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
