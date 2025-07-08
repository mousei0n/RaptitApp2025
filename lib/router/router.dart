import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raptitapp2025/main.dart';
import 'package:raptitapp2025/screens/hayaoshi/exphayaoshi.dart';
import 'package:raptitapp2025/screens/hayaoshi/regihayaoshi.dart';
import 'package:raptitapp2025/screens/trocco/exptrocco.dart';
import 'package:raptitapp2025/screens/trocco/regitrocco.dart';

final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyHomePage(title: ''),
        );
      },
    ),
    GoRoute(
      path: '/exphayaoshi',
      name: 'exphayaoshi',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyExpHayaoshi(title: ''),
        );
      },
    ),
    GoRoute(
      path: '/exptrocco',
      name: 'exptrocco',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyExpTrocco(title: ''),
        );
      },
    ),
    GoRoute(
      path: '/regihayaoshi',
      name: 'regihayaoshi',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyRegiHayaoshi(title: ''),
        );
      },
    ),
    GoRoute(
      path: '/regitrocco',
      name: 'regitrocco',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyRegiTrocco(title: ''),
        );
      },
    ),
  ],
);
