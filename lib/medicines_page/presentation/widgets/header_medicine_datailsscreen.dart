import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';

class HeaderMedicineDetailsScreen extends StatelessWidget {
  const HeaderMedicineDetailsScreen({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return           Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        alignment: Alignment.topLeft,
        clipBehavior: Clip.hardEdge,
        height: size.height / 2,
        width: double.infinity,
        decoration:  BoxDecoration(
          image: DecorationImage( fit:BoxFit.cover ,image: AssetImage(image,),),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        child: IconButton(onPressed: () {
          Navigator.pop(context);
        },

          icon: const Icon(Icons.arrow_back,size: 24,),)
    );
  }
}
