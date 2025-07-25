import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class PageViewItemEntity {
  final String subtitle, image, backgroundImage;
  final Widget title;

  const PageViewItemEntity({
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
  });

  static List<PageViewItemEntity> pageViewItems = <PageViewItemEntity>[
    PageViewItemEntity(
      image: Assets.imagesPageViewItem1Image,
      backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
      subtitle:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'مرحبًا بك في',
            style: TextStyles.bold23,
          ),
          Text(
            ' HUB',
            style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
          ),
          Text(
            'Fruit',
            style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    ),
    const PageViewItemEntity(
      image: Assets.imagesPageViewItem2Image,
      backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
      subtitle:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
      title: Text(
        'ابحث وتسوق',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF0C0D0D),
          fontSize: 23,
          //fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
    ),
  ];
}
