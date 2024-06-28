import 'package:assigment/data/data.dart';
import 'package:assigment/models/content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class addInput extends StatefulWidget {

  addInput({super.key});

  @override
  State<addInput> createState() => _addInputState();
}

class _addInputState extends State<addInput> {
  TextEditingController nameText = TextEditingController();
  TextEditingController costText = TextEditingController();
  TextEditingController imgText = TextEditingController();

  List<Contents> displayProduct = DataProduct;
  void addProduct(Contents product){
    setState(() {
      displayProduct.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
          child: TextField(
            controller: nameText,
            style: TextStyle(color: Colors.white),
            decoration: new InputDecoration(
                labelText: 'name',
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
          child: TextField(
            controller: costText,
            style: TextStyle(color: Colors.white),
            decoration: new InputDecoration(
                labelText: 'cost',
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
          child: TextField(
            controller: imgText,
            style: TextStyle(color: Colors.white),
            decoration: new InputDecoration(
                labelText: 'img',
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
            ),
          ),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromRGBO(103,81,113,100),
              borderRadius: BorderRadius.circular(15)
          ),
          child:TextButton(
            onPressed: (){
              if(nameText.text == '' || costText.text == '' || imgText.text == ''){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text('Siz tolig toldirmadnigiz'))
                );
              }
              else{
                Contents newContent = Contents(name: nameText.text, cost:costText.text, img:imgText.text);
                addProduct(newContent);
                context.go('/');
              }
            },
            child: Text('Click',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white
            ),),
          ),
        )
      ],
    );
  }
}
