import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ListHomeForArtical extends StatelessWidget {
  const ListHomeForArtical({super.key, required this.list});

  final List<ContantModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 211,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      list[index].image,
                    ),
                  ),
                ),
                child: list[index].isVideo
                    ? Image.asset(Assets.videoImage)
                    : const SizedBox.shrink(),
              ),
              const SizedBox(height: 10,),
              Text(
                list[index].text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorsApp.black,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: list.length);
  }
}

class ContantModel {
  String image;
  String text;
  bool isVideo;

  ContantModel({
    required this.image,
    required this.text,
    this.isVideo = false,
  });

  static List<ContantModel> listArticles = [
    ContantModel(
        image: Assets.Articles1,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Articles2,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Articles3,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
  ];
  static List<ContantModel> listBaby = [
    ContantModel(
        image: Assets.Baby1,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Baby2,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Baby3,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
  ];
  static List<ContantModel> listModernparenting = [
    ContantModel(
        isVideo: true,
        image: Assets.Modernparenting1,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        isVideo: true,
        image: Assets.Modernparenting2,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        isVideo: true,
        image: Assets.Modernparenting3,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
  ];
  static List<ContantModel> listPregrnant = [
    ContantModel(
        image: Assets.Pregrnant1,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Pregrnant2,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
    ContantModel(
        image: Assets.Pregrnant3,
        text:
            'Everyone struggles to sleep in hot weather. A lukewarm bath may help your baby cool off enough to fall asleep....'),
  ];
}
