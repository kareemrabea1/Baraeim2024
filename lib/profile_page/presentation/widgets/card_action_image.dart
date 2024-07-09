import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class CardActionImage extends StatelessWidget {
  const CardActionImage({super.key, required this.title, required this.subtitle, required this.image, this.onTap});

  final String title;

  final String subtitle;

  final String image;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(9),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsApp.blue.withOpacity(0.05)),
              child: Image.asset(
                image,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: ColorsApp.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: ColorsApp.subtitleColor,
                      fontSize: 11,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 19,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorsApp.textColor.withOpacity(0.6),
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
