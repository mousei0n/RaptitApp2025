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
        fontFamily:
            'PretendardJP', // Ensure this font is properly loaded in pubspec.yaml
      ),
      home: const MyRegiTrocco(
        title: '朝陽杯登録',
      ), // <--- FIX: Uncomment and set your home screen
    );
  }
}

class MyRegiTrocco extends StatefulWidget {
  const MyRegiTrocco({super.key, required this.title});

  final String title;

  @override
  State<MyRegiTrocco> createState() => _MyRegiTroccoState();
}

class _MyRegiTroccoState extends State<MyRegiTrocco> {
  String? gradeofperson1;
  String? classofperson1;
  String? numberofperson1;
  String? gradeofperson2;
  String? classofperson2;
  String? numberofperson2;
  String? gradeofperson3;
  String? classofperson3;
  String? numberofperson3;

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
              '【トロッコアドベンチャ―】',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'チームワークを発揮して 次々に出題される2択クイズに正解しよう',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 40),
            Text(
              '整理番号発行',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: Text(
                      'プレイヤー①',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: '01',
                        child: Text(
                          '中1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '02',
                        child: Text(
                          '中2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '03',
                        child: Text(
                          '中3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '04',
                        child: Text(
                          '高1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '05',
                        child: Text(
                          '高2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '06',
                        child: Text(
                          '高3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        gradeofperson1 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: gradeofperson1,
                  ),
                ),
                SizedBox(width: 10),
                Text('年', style: TextStyle(fontSize: 30)),
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(9, (index) {
                      final classnumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      ); // <--- Improvement: Renamed variable for clarity
                      return DropdownMenuItem(
                        key: Key('class_$classnumber'),
                        value: classnumber,
                        child: Text(
                          classnumber, // <--- Improvement: Changed to '組'
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        classofperson1 =
                            value; // <--- Improvement: Updated to 'classofperson1'
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value:
                        classofperson1, // <--- Improvement: Updated to 'classofperson1'
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '組',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '組'
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(45, (index) {
                      final numbernumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      );
                      return DropdownMenuItem(
                        key: Key('number_$numbernumber'),
                        value: numbernumber,
                        child: Text(
                          numbernumber, // <--- This one seems correct
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        numberofperson1 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: numberofperson1,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '番',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '番'
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: Center(
                    child: Text(
                      'プレイヤー②',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: '01',
                        child: Text(
                          '中1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '02',
                        child: Text(
                          '中2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '03',
                        child: Text(
                          '中3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '04',
                        child: Text(
                          '高1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '05',
                        child: Text(
                          '高2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '06',
                        child: Text(
                          '高3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        gradeofperson2 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: gradeofperson2,
                  ),
                ),
                SizedBox(width: 10),
                Text('年', style: TextStyle(fontSize: 30)),
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(9, (index) {
                      final classnumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      ); // <--- Improvement: Renamed variable for clarity
                      return DropdownMenuItem(
                        key: Key('class_$classnumber'),
                        value: classnumber,
                        child: Text(
                          classnumber, // <--- Improvement: Changed to '組'
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        classofperson2 =
                            value; // <--- Improvement: Updated to 'classofperson1'
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value:
                        classofperson2, // <--- Improvement: Updated to 'classofperson1'
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '組',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '組'
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(45, (index) {
                      final numbernumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      );
                      return DropdownMenuItem(
                        key: Key('number_$numbernumber'),
                        value: numbernumber,
                        child: Text(
                          numbernumber, // <--- This one seems correct
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        numberofperson2 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: numberofperson2,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '番',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '番'
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text(
                      'プレイヤー③',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: '01',
                        child: Text(
                          '中1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '02',
                        child: Text(
                          '中2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '03',
                        child: Text(
                          '中3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '04',
                        child: Text(
                          '高1',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '05',
                        child: Text(
                          '高2',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '06',
                        child: Text(
                          '高3',
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        gradeofperson3 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: gradeofperson3,
                  ),
                ),
                SizedBox(width: 10),
                Text('年', style: TextStyle(fontSize: 30)),
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(9, (index) {
                      final classnumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      ); // <--- Improvement: Renamed variable for clarity
                      return DropdownMenuItem(
                        key: Key('class_$classnumber'),
                        value: classnumber,
                        child: Text(
                          classnumber, // <--- Improvement: Changed to '組'
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        classofperson3 =
                            value; // <--- Improvement: Updated to 'classofperson1'
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value:
                        classofperson3, // <--- Improvement: Updated to 'classofperson1'
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '組',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '組'
                SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: DropdownButton(
                    items: List.generate(45, (index) {
                      final numbernumber = (index + 1).toString().padLeft(
                        2,
                        '0',
                      );
                      return DropdownMenuItem(
                        key: Key('number_$numbernumber'),
                        value: numbernumber,
                        child: Text(
                          numbernumber, // <--- This one seems correct
                          style: TextStyle(fontFamily: "PretendardJP"),
                        ),
                      );
                    }),
                    onChanged: (String? value) {
                      setState(() {
                        numberofperson3 = value;
                      });
                    },
                    style: const TextStyle(fontSize: 24.0, color: Colors.black),
                    value: numberofperson3,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '番',
                  style: TextStyle(fontSize: 30),
                ), // <--- Improvement: Changed to '番'
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
                children: [Text('整理番号を発行する', style: TextStyle(fontSize: 20))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
