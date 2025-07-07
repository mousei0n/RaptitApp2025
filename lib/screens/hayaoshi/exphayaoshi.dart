import 'package:flutter/material.dart';

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

class MyExpHayaoshi extends StatefulWidget {
  const MyExpHayaoshi({super.key, required this.title});

  final String title;

  @override
  State<MyExpHayaoshi> createState() => _MyExpHayaoshiState();
}

class _MyExpHayaoshiState extends State<MyExpHayaoshi> {
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
              '【朝陽杯】',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text('本格的な早押し機と問題で体感する「本物」の早押しクイズ', style: TextStyle(fontSize: 25)),
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
                  '・座席の移動や立ち上がりはスタッフの指示に従ってください',
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
                /* ボタンが押された時の処理 */
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
