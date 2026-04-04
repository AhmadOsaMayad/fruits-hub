import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruit_hub/features/main/domain/entities/nav_bar_item_entity.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            navBarItems(context).asMap().entries.map((e) {
              var index = e.key;
              var entity = e.value;
              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      log('tapped');
                      selectedIndex = index;
                      // widget.onItemTapped(index);
                    });
                  },
                  child: NavBarItem(
                    isSelected: index == selectedIndex,
                    item: entity,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
