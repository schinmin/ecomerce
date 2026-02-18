import 'package:flutter/material.dart';
///for categories and featured products
class Titlebar extends StatelessWidget {
 final String title;
 final int index;
  const Titlebar({super.key,required this.title,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
      TextButton.icon(
        icon: Icon(Icons.visibility_outlined),
        onPressed: (){}, 
        label: Text("view all")),
      ]));
  }
}
