import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/nav_bar_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/active_nav_bar_item.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/in_active_nav_bar_item.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.isSelected, required this.item});
  final bool isSelected;
  final NavBarItemEntity item;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveNavBarItem(title: item.title, icon: item.activeIcon)
        : InActiveNavBarItem(icon: item.inActiveIcon);
  }
}
