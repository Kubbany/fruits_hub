import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/on_boarding/domain/entites/page_view_item_entity.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.pageViewItemEntity, required this.isVisible});
  final PageViewItemEntity pageViewItemEntity;
  final bool isVisible;
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
              Visibility(
                visible: isVisible,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('تخط'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        pageViewItemEntity.title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            pageViewItemEntity.subtitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
