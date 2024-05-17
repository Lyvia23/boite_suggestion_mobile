// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:boite_suggestion/components/custom.text.fields.dart';
import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/material.dart';

class SearchBarAction extends StatelessWidget {
  final String title;
  final Function()? filterAction;
  final Function()? searchAction;
  const SearchBarAction({
    super.key,
    this.filterAction,
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
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Palette.greenColor,
                      borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                      Icons.notification_add,
                      color: Palette.whiteColor,
                      size: 35.0 ,
                    ) ,
                    )
                   
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: CustomTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    hintText: 'Rechercher',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
