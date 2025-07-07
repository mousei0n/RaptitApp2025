import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raptitapp2025/main.dart';

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
          child: const MyHomePage(title: 'FLutter Demo'),
        );
      },
    ),
  ],
);
