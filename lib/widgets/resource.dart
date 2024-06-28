import 'package:assigment/models/content.dart';
import 'package:flutter/material.dart';

class resource extends StatelessWidget {
  Contents displayProduct;
  resource({super.key,required this.displayProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 115,
              height: 118,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child:Image.network(displayProduct.img,fit: BoxFit.cover,),
          ),
          Text(displayProduct.name,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          Text(displayProduct.cost,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),),
          Container(
            width: 113,
            height: 38,
            decoration: BoxDecoration(
                color: Color.fromRGBO(103,81,113,100),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart),
              label: Text('Buy'),
            ),
          )
        ],
      ),
    );
  }
}
