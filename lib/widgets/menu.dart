import 'package:assigment/data/data.dart';
import 'package:assigment/models/content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class menu  extends StatefulWidget {
  const menu ({super.key});
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  List<Contents>Products = DataProduct;

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(itemBuilder:(context)=>[
         PopupMenuItem(
         value: 0,
         child: Text('Sort'),
           onTap: (){
           setState(() {
             Products.sort((a,b)=>a.cost.compareTo(b.cost));
           });
           },
         ),
         PopupMenuItem(
          value: 1,
          child:Text('Login'),
           onTap:()=>context.push('/login')
         )
          ]);
  }
}
