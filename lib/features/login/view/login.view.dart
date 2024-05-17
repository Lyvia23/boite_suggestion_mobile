// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:boite_suggestion/components/Custom.suggestion.listes.dart';
import 'package:boite_suggestion/components/custom.app.entete.dart';
import 'package:boite_suggestion/components/custom.button.dart';
import 'package:boite_suggestion/components/custom.text.fields.dart';
import 'package:boite_suggestion/components/suggestion.list.dart';
import 'package:boite_suggestion/features/login/controller/login.controller.dart';
import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                // SearchBarAction(
                //   title: 'Boite à suggestion',
                // ),
                CustomAppEntete(title: 'suggestion',
                onTap: () {
                  Get.back();
                },
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: CustomButton(
                    title: 'Ajouter',
                  ),
                ),
               

                Container(
                  padding: EdgeInsets.all(10),
                  child: CustomTextField(
                    hintText: 'login',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                SuggestionList(image: 'assets/images/avatar.png', title: 'afficher', paragraph: "Jessy a fait une nouvelle suggestion dans la catégorie sport", onTap:() {}, heure: 'A 10h00',
                color: Palette.hintColorList,
                ),
                CustomSuggestionsList(image: 'assets/images/sport.png', title: 'Sport', paragraph: "Jessy a fait une nouvelle suggestion dans la catégorie sport", onTap:() {}, heure: 'A 10h00',
                color: Palette.hintColorList, titleTextButton: 'voir plus', profile: 'assets/images/avatar.png', nomutilisateur: 'Joyce Pokam',
                )

                
              ]),
            ),
          ),
        );
      },
    );
  }
}
