import 'package:boite_suggestion/theme/Palette.dart';
import 'package:boite_suggestion/theme/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionList extends StatelessWidget {
  final String image;
  final String title;
  final String paragraph;
  final String? heure;
  final Color ? color;

  final Function() onTap;
  const SuggestionList({
    required this.image,
    required this.title,
    required this.paragraph,
    required this.onTap,
    required this.heure,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 6),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
              
                  child: Image.asset(
                   
                    
                    image,
                    fit: BoxFit.contain,
                  )),
             
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    paragraph.isNotEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                paragraph,
                                style: AppFonts.hint_text,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          )
                        : const SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: onTap,
                          child: Text(
                            title,
                          ),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Palette.primaryColor),
                          ),
                        ),
                        Text(heure!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
