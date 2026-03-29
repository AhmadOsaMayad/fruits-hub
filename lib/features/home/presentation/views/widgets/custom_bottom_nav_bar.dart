import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/nav_bar_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            navBarItems(context).map((e) {
              return NavBarItem(isSelected: false, item: e);
            }).toList(),
      ),
    );
  }
}
