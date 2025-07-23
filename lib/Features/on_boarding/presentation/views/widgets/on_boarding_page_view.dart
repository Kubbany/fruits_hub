import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_boarding/domain/entites/page_view_item_entity.dart';
import 'package:fruits_hub/Features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => PageViewItem(
        pageViewItemEntity: PageViewItemEntity.pageViewItems[index],
      ),
      itemCount: PageViewItemEntity.pageViewItems.length,
    );
  }
}
