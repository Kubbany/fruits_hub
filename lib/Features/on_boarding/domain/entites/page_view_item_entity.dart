import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class PageViewItemEntity {
  final String subtitle, image, backgroundImage;
  final Widget title;

  const PageViewItemEntity({
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
  });

  static const List<PageViewItemEntity> pageViewItems = <PageViewItemEntity>[
    PageViewItemEntity(
      image: Assets.imagesPageViewItem1Image,
      backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
      subtitle:
          "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
      title: Row(
        children: <Widget>[
          Text('مرحبًا بك في'),
          Text('Fruit'),
          Text('HUB'),
        ],
      ),
    ),
    PageViewItemEntity(
      image: Assets.imagesPageViewItem2Image,
      backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
      subtitle:
          "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
      title: Text('ابحث وتسوق'),
    ),
  ];
}
