import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/nav_bar_item_model.dart';
import 'package:stacked/stacked.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  const NavBarItemTabletDesktop({super.key});

  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Text(
      viewModel.title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
