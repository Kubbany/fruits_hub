import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_boarding/domain/entites/page_view_item_entity.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.pageViewItemEntity});
  final PageViewItemEntity pageViewItemEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SvgPicture.asset(
                  pageViewItemEntity.backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  pageViewItemEntity.image,
                ),
              ),
              Text('تخط')
            ],
          ),
        ),
      ],
    );
  }
}
