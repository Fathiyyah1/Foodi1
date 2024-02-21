import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodi/utils/colors.dart';
import 'package:foodi/utils/dimensions.dart';
import 'package:foodi/widgets/app_icon.dart';
import 'package:foodi/widgets/big_text.dart';
import 'package:foodi/widgets/exandable_text_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "American Side",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/burg2.jpeg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "Start by preparing the patties. In a large bowl mix together the minced beef, chopped onion, garlic, lime juice, chopped parsley, egg and breadcrumbs. \n Season with salt and pepper and shape into six 2 cm thick patties. Brush with olive oil, cover and refrigerate for 30 minutes. \n Make sure to bring the patties to room temperature before grilling. Cook the burgers on a high heat to required doneness and set aside To make the purple cabbage slaw, mix the finely shredded cabbage, Dijon mustard, mayonnaise and honey till evenly coated. \n To layer the buns, start with a lathering of dijonnaise on the bottom layer, followed by fresh lettuce, a couple of tomato slices, purple cabbage slaw, homemade beef burger, beetroot relish and a final blanket of 2 x PUCK Natural Emmental Slices. \n Heat for a few minutes under a grill to melt the cheese and serve warm with a side of fries or your favorite salad. \n That heavenly moment when you dig your teeth in the juicy patty taking in all the goodness of a great taste.. though messy, it’s totally worth it! \n Sure you relish those yummalicious burgers that are vigorously advertised and staged in a way that they become absolutely irresistible. \n As tempting as these burgers may look, they usually turn out to be a disappointment when they’re actually kept in front of you! A big sized burger puts the name ‘big’ to shame. Also, junk food is everything but healthy and burgers are the poster-child of junk food! \n Making burgers is the easiest task ever! So why not don a chef’s apron and treat yourself to a burger. What is better than a home made, full-of-nutrition burger? And guess what! It is made up of left overs! A win-win situation right? \n Remember to use the gas stove, or the oven and the microwave, and the kitchen utensils, under adult supervision. \n Heat up all the cooked vegetables and mash them in a bowl using a big spatula. After they cool up a bit, put in small bread crumbs and using water, make small patties out of it. \n After the patties are made, ask your mum to fry them up in very little oil in a fry pan.\nTake one bun, and glaze it with tomato sauce. Put a patty on it and the onion rings, tomatoes, cabbage and all. Cover it up with another bun.\mPut a little toothpick over it so that the ingredients don’t spill all over.\n Serve it with sides like iced tea. \nVoila! Everything for an amazing supper with your friends is ready! Now you are officially a chef! \n Keep in mind, there is nothing as a best burger recipe! If you make something yourself, it is always the best. So let those taste buds dance with happiness along with keeping your gut happy too!",
                ),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconsize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconsize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //for the order - 0 +
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
