import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/generated/l10n.dart';

class NavBarItemEntity {
  final String activeIcon, inActiveIcon, title;
  NavBarItemEntity({
    required this.activeIcon,
    required this.inActiveIcon,
    required this.title,
  });
}

List<NavBarItemEntity> navBarItems(BuildContext context) => [
  NavBarItemEntity(
    activeIcon: Assets.imagesHomeFilled,
    inActiveIcon: Assets.imagesHomeOutlined,
    title: S.of(context).home,
  ),
  NavBarItemEntity(
    activeIcon: Assets.imagesProductsFilled,
    inActiveIcon: Assets.imagesProductsOutlined,
    title: S.of(context).products,
  ),
  NavBarItemEntity(
    activeIcon: Assets.imagesCartFilled,
    inActiveIcon: Assets.imagesCartOutlined,
    title: S.of(context).cart,
  ),
  NavBarItemEntity(
    activeIcon: Assets.imagesProfileFilled,
    inActiveIcon: Assets.imagesProfileOutlined,
    title: S.of(context).profile,
  ),
];

// List<NavBarItemEntity> get navBarItems => [
//   NavBarItemEntity(
//     activeIcon: Assets.imagesHomeFilled,
//     inActiveIcon: Assets.imagesHomeOutlined,
//     title: "Home",
//   ),
//   NavBarItemEntity(
//     activeIcon: Assets.imagesProductsFilled,
//     inActiveIcon: Assets.imagesProductsOutlined,
//     title: "Products",
//   ),
//   NavBarItemEntity(
//     activeIcon: Assets.imagesCartFilled,
//     inActiveIcon: Assets.imagesCartOutlined,
//     title: "Cart",
//   ),
//   NavBarItemEntity(
//     activeIcon: Assets.imagesProfileFilled,
//     inActiveIcon: Assets.imagesProfileOutlined,
//     title: "Profile",
//   ),
// ];
