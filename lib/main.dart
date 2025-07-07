import 'package:flutter/material.dart';
import 'package:raptitapp2025/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //title: Text(widget.title),
      //),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'クイズ研究会 統合整理券発券システム',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    /* ボタンが押された時の処理 */
                  },
                  style: TextButton.styleFrom(
                    fixedSize: Size(350, 350),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '朝陽杯',
                        style: TextStyle(
                          fontSize: 40, // 大きな文字サイズ
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '本物の「早押しクイズ」を体験しよう',
                        style: TextStyle(
                          fontSize: 17.5, // 小さな文字サイズ
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    /* ボタンが押された時の処理 */
                  },
                  style: TextButton.styleFrom(
                    fixedSize: Size(350, 350),
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'トロッコアドベンチャー',
                        style: TextStyle(
                          fontSize: 30, // 大きな文字サイズ
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '次々に出題される2択クイズに正解しよう',
                        style: TextStyle(
                          fontSize: 17.5, // 小さな文字サイズ
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
