import 'package:baraeim/colors_app.dart';
import 'package:baraeim/profile_page/presentation/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';

class CardUserInformation extends StatefulWidget {
  const CardUserInformation({super.key});

  @override
  State<CardUserInformation> createState() => _CardUserInformationState();
}

class _CardUserInformationState extends State<CardUserInformation> {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController gender;
  late TextEditingController babyWeight;
  late TextEditingController birthdate;
  late TextEditingController babyLength;
  bool isEdit = false;

  @override
  void initState() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    gender = TextEditingController();
    babyWeight = TextEditingController();
    babyLength = TextEditingController();
    birthdate = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    gender.dispose();
    babyWeight.dispose();
    babyLength.dispose();
    birthdate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusNode node = FocusScope.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey.shade50)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isEdit = !isEdit;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  Assets.editIcon,
                  height: 15,
                  width: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Edit',
                  style: TextStyle(color: ColorsApp.primary),
                )
              ],
            ),
          ),
          CustomTextField(
            controller: name,
            title: 'Name',
            active: isEdit,
            onComplete: () {
              node.nextFocus();
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            controller: email,
            title: 'Email',
            active: isEdit,
            onComplete: () {
              node.nextFocus();
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            controller: password,
            title: 'Password',
            active: isEdit,
            obscureText: true,
            onComplete: () {
              node.nextFocus();
            },
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: gender,
                  title: 'Gender',
                  active: isEdit,
                  onComplete: () {
                    node.nextFocus();
                  },
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomTextField(
                  controller: babyWeight,
                  title: 'Baby weight',
                  active: isEdit,
                  onComplete: () {
                    node.nextFocus();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: birthdate,
                  title: 'date of birth',
                  active: isEdit,
                  onComplete: () {
                    node.nextFocus();
                  },
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomTextField(
                  controller: babyLength,
                  title: 'Child\'s length',
                  active: isEdit,
                  onComplete: () {
                    node.nextFocus();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
