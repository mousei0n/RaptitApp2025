import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        fontFamily: 'PretendardJP',
      ),
      // home: const AccoutScreen(),
    );
  }
}

class MyExpTrocco extends StatefulWidget {
  const MyExpTrocco({super.key, required this.title});

  final String title;

  @override
  State<MyExpTrocco> createState() => _MyExpTroccoState();
}

class _MyExpTroccoState extends State<MyExpTrocco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '【トロッコアドベンチャー】',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text('チームで協力し 次々に出題される2択クイズに挑もう', style: TextStyle(fontSize: 25)),
            SizedBox(height: 40),
            Text(
              '注意事項',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '・機材や早押しボタンには丁寧に触れてください（強く叩かない）',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '・チームは3人での構成のみ受け付けます',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '・トロッコ内では穏やかに移動してください',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '・ルール説明をよく聞き、分からない点は必ず質問してください',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '・他の参加者や運営スタッフに対して礼儀を守りましょう',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {
                context.push('/regitrocco');
              },
              style: TextButton.styleFrom(
                fixedSize: Size(200, 50),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('わかった', style: TextStyle(fontSize: 20))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
