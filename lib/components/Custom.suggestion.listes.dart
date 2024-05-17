import 'package:boite_suggestion/theme/Palette.dart';
import 'package:boite_suggestion/theme/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSuggestionsList extends StatelessWidget {
  final String image;
  final String title;
  final String paragraph;
  final String? heure;
  final Color? color;
  final String? profile;
  final String? nomutilisateur;
  final String? titleTextButton;

  final Function() onTap;
  const CustomSuggestionsList({
    required this.image,
    required this.title,
    required this.paragraph,
    required this.onTap,
    required this.heure,
    required this.color,
    required this.titleTextButton,
    this.profile,
    this.nomutilisateur,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 6),
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Image.asset(
            image,
            fit: BoxFit.contain,
          )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppFonts.titre4,
                ),
                paragraph.isNotEmpty
                    ? Column(
                        children: [
                          Text(
                            paragraph,
                            style: AppFonts.hint_text,
                            textAlign: TextAlign.justify,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                        profile!,
                                        fit: BoxFit.contain,
                                      ))),
                              Expanded(
                                  child: Text(
                                "$nomutilisateur -il y a $heure min",
                                style: AppFonts.hint_text,
                                textAlign: TextAlign.justify,
                              )),
                            ],
                          ),
                        ],
                      )
                    : const SizedBox(),
                TextButton(
                  onPressed: onTap,
                  child: Text(
                    titleTextButton!,
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Palette.primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
