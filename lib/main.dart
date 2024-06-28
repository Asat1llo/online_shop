import 'package:assigment/pages/home_page.dart';
import 'package:assigment/pages/login_page.dart';
import 'package:assigment/pages/product_add.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
  ));
}

final _router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
         builder: (context,state)=>home_page()
      ),
      GoRoute(
          path: '/login',
        builder: (context,state)=>login_page()
      ),
      GoRoute(
          path: '/add',
        builder: (context,state)=>product_add()
      )
    ]
);