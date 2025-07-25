import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_boarding/domain/entites/page_view_item_entity.dart';
import 'package:fruits_hub/Features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) => PageViewItem(
        pageViewItemEntity: PageViewItemEntity.pageViewItems[index],
        isVisible: index == 0 ? true : false,
      ),
      itemCount: PageViewItemEntity.pageViewItems.length,
    );
  }
}
