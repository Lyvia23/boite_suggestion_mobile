import 'package:boite_suggestion/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final Function(dynamic value)? onChanged;
  final String? groupvalue;
  final String? value;
  final String? title;
  const CustomRadio(
      {super.key,
      required this.onChanged,
      required this.groupvalue,
      required this.value,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(


    ),
      child: RadioListTile(
          title: Text(title!),
          value: value,
          groupValue: groupvalue,
          onChanged: onChanged),
    );
  }
}
// import 'package:flutter/material.dart';

// class CustomRadio extends StatelessWidget {
//   const CustomRadio({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container( 
//             padding: EdgeInsets.all(20),
//             child: 
//           Row(
//             children: [
                
    
                
//                 RadioListTile(
//                     title: Text("Male"),
//                     value: "male", 
//                     groupValue: gender, 
//                     onChanged: (value){
//                       setState(() {
//                           gender = value.toString();
//                       });
//                     },
//                 ),

//                 RadioListTile(
//                     title: Text("Female"),
//                     value: "female", 
//                     groupValue: gender, 
//                     onChanged: (value){
//                       setState(() {
//                           gender = value.toString();
//                       });
//                     },
//                 ),

//                 RadioListTile(
//                       title: Text("Other"),
//                       value: "other", 
//                       groupValue: gender, 
//                       onChanged: (value){
//                         setState(() {
//                             gender = value.toString();
//                         });
//                       },
//                 )
//             ],
//           ),
//         );
//   }
// }