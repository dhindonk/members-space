import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../widgets/banner_slider.dart'; 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> banners1 = [
    Assets.images.banner1.path,
    Assets.images.banner1.path,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(110),
                  bottomRight: Radius.circular(110),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.ornamenHeader.path,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 35.0,
                  horizontal: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            Assets.logo.logoWhitePng.path,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Welcome, ',
                                  style: TextStyle(
                                    color: AppColors.tertiary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Member Setia',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Assets.logo.logoUnpak.image(
                      width: 70,
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
            BannerSlider(items: banners1),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Feature',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textColor,
                ),
              ),
              SpaceHeight(10),
              CardFeature(
                title: 'Members',
                desc: '200+ members',
                icon: Assets.icons.members.svg(),
                link: (){}
              ),
              CardFeature(
                title: 'Forum',
                desc: 'Diskusi terbuka',
                icon: Assets.icons.forum.svg(),
                ornamen: false,
                boxShadow: false,
                link: () {}
              ),
              CardFeature(
                title: 'Projects',
                desc: '50+ Proyek aktif',
                icon: Assets.icons.projects.image(),
                link: (){}
              ),
              CardFeature(
                title: 'Mitra',
                desc: '30+ Mitra terpercaya',
                icon: Assets.icons.mitra.image(),
                ornamen: false,
                boxShadow: false,
                link: () {}
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CardFeature extends StatelessWidget {
  final String title, desc;
  final Widget icon;
  final bool ornamen, boxShadow;
  final VoidCallback? link;

  const CardFeature({
    Key? key,
    required this.title,
    required this.desc,
    required this.icon,
    this.ornamen = true,
    this.boxShadow = true,
    this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: link,
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        clipBehavior: Clip.hardEdge,
        height: 150,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: boxShadow
                  ? AppColors.primary.withOpacity(.2)
                  : AppColors.tertiary.withOpacity(.2),
              blurRadius: 12,
              spreadRadius: 0,
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SpaceHeight(2),
                    Flexible(
                      child: Container(
                        child: Text(
                          desc,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor,
                          ),
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      (ornamen)
                          ? Assets.images.ornamenCard1.path
                          : Assets.images.ornamenCard2.path,
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: icon,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
