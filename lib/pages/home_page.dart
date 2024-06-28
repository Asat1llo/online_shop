import 'package:assigment/data/data.dart';
import 'package:assigment/models/content.dart';
import 'package:assigment/widgets/addProduct.dart';
import 'package:assigment/widgets/menu.dart';
import 'package:assigment/widgets/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  home_page({super.key});
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  List<Contents> content = DataProduct;

  void _runFilter(String query){
    final suggestions = DataProduct.where((content){
      final contentsName = content.name.toLowerCase();
      final input = query.toLowerCase();
      return contentsName.contains(input);
    }).toList();
    setState(()=> content = suggestions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27,28, 29, 100),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(27, 28, 29, 100),
          title: Text('Wildbris',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 5),),
          centerTitle: true,
          actions: [
            menu()
          ],
        ),
        body:Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                onChanged: _runFilter,
                decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search)
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                      itemCount:content.length,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 15),
                      itemBuilder: (context,i){
                        return resource(displayProduct:content[i]);
                      },
                    ),
            ),
          ],
        ),
    );
  }
}
