import 'package:assigment/widgets/addProduct.dart';
import 'package:flutter/material.dart';

class product_add extends StatelessWidget {
 const product_add({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27,28, 29, 100),
      body:addInput(),
    );
  }
}
