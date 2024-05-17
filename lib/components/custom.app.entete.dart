// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/material.dart';

class CustomAppEntete extends StatelessWidget {
  final String title;
  final Function() ? onTap;
  final Function()? searchAction;
  const CustomAppEntete({
    super.key,
    required this.onTap,

   required this.title,
    this.searchAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.secondaryColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    InkWell(
                  onTap: onTap,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Palette.whiteColor,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        // Text("Retour", style: AppFonts.sub_paragraph)
                      ],
                    ),
                  ),
                ),
                    SizedBox(width: 20,),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                   
                   
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
