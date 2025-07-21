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
      home: const MyRegiTrocco(title: '朝陽杯登録'),
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
  // 各プレイヤーの選択値（String?型）
  List<String?> grades = [null, null, null]; // person1, person2, person3の学年
  List<String?> classes = [null, null, null]; // person1, person2, person3の組
  List<String?> numbers = [null, null, null]; // person1, person2, person3の番号

  // 各プレイヤーのデータ（List<int>）
  List<int> person1 = [0, 0, 0]; // 学年, 組, 番号
  List<int> person2 = [0, 0, 0];
  List<int> person3 = [0, 0, 0];

  final Map<String, int> gradeToValue = {
    '01': 1, // 中1
    '02': 2, // 中2
    '03': 3, // 中3
    '04': 4, // 高1
    '05': 5, // 高2
    '06': 6, // 高3
  };

  // DropdownButtonを共通化するウィジェット
  Widget buildDropdown({
    required String? value,
    required List<DropdownMenuItem<String>> items,
    required void Function(String?) onChanged,
    required String hint,
  }) {
    return SizedBox(
      width: 200,
      height: 50,
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text(hint, style: const TextStyle(fontFamily: "PretendardJP")),
        items: items,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 24.0, color: Colors.black),
        value: value,
      ),
    );
  }

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
            const Text(
              '【トロッコアドベンチャ―】',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text(
              'チームワークを発揮して 次々に出題される2択クイズに正解しよう',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 40),
            const Text(
              '整理番号発行',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            // プレイヤー①
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
                  child: const Center(
                    child: Text(
                      'プレイヤー①',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                // 学年
                buildDropdown(
                  value: grades[0],
                  items: gradeToValue.keys.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        {
                          '01': '中1',
                          '02': '中2',
                          '03': '中3',
                          '04': '高1',
                          '05': '高2',
                          '06': '高3',
                        }[value]!,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person1[0] = gradeToValue[value]!; // 学年をインデックス0に
                        grades[0] = value;
                      });
                    }
                  },
                  hint: '学年',
                ),
                const SizedBox(width: 10),
                const Text('年', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 組
                buildDropdown(
                  value: classes[0],
                  items: List.generate(9, (index) {
                    final classnumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('class_$classnumber'),
                      value: classnumber,
                      child: Text(
                        classnumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person1[1] = int.parse(value); // 組をインデックス1に
                        classes[0] = value;
                      });
                    }
                  },
                  hint: '組',
                ),
                const SizedBox(width: 10),
                const Text('組', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 番号
                buildDropdown(
                  value: numbers[0],
                  items: List.generate(45, (index) {
                    final numbernumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('number_$numbernumber'),
                      value: numbernumber,
                      child: Text(
                        numbernumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person1[2] = int.parse(value); // 番号をインデックス2に
                        numbers[0] = value;
                      });
                    }
                  },
                  hint: '番号',
                ),
                const SizedBox(width: 10),
                const Text('番', style: TextStyle(fontSize: 30)),
              ],
            ),
            const SizedBox(height: 20),
            // プレイヤー②
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
                  child: const Center(
                    child: Text(
                      'プレイヤー②',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                // 学年
                buildDropdown(
                  value: grades[1],
                  items: gradeToValue.keys.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        {
                          '01': '中1',
                          '02': '中2',
                          '03': '中3',
                          '04': '高1',
                          '05': '高2',
                          '06': '高3',
                        }[value]!,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person2[0] = gradeToValue[value]!; // 学年をインデックス0に
                        grades[1] = value;
                      });
                    }
                  },
                  hint: '学年',
                ),
                const SizedBox(width: 10),
                const Text('年', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 組
                buildDropdown(
                  value: classes[1],
                  items: List.generate(9, (index) {
                    final classnumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('class_$classnumber'),
                      value: classnumber,
                      child: Text(
                        classnumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person2[1] = int.parse(value); // 組をインデックス1に
                        classes[1] = value;
                      });
                    }
                  },
                  hint: '組',
                ),
                const SizedBox(width: 10),
                const Text('組', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 番号
                buildDropdown(
                  value: numbers[1],
                  items: List.generate(45, (index) {
                    final numbernumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('number_$numbernumber'),
                      value: numbernumber,
                      child: Text(
                        numbernumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person2[2] = int.parse(value); // 番号をインデックス2に
                        numbers[1] = value;
                      });
                    }
                  },
                  hint: '番号',
                ),
                const SizedBox(width: 10),
                const Text('番', style: TextStyle(fontSize: 30)),
              ],
            ),
            const SizedBox(height: 20),
            // プレイヤー③
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
                  child: const Center(
                    child: Text(
                      'プレイヤー③',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                // 学年
                buildDropdown(
                  value: grades[2],
                  items: gradeToValue.keys.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        {
                          '01': '中1',
                          '02': '中2',
                          '03': '中3',
                          '04': '高1',
                          '05': '高2',
                          '06': '高3',
                        }[value]!,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person3[0] = gradeToValue[value]!; // 学年をインデックス0に
                        grades[2] = value;
                      });
                    }
                  },
                  hint: '学年',
                ),
                const SizedBox(width: 10),
                const Text('年', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 組
                buildDropdown(
                  value: classes[2],
                  items: List.generate(9, (index) {
                    final classnumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('class_$classnumber'),
                      value: classnumber,
                      child: Text(
                        classnumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person3[1] = int.parse(value); // 組をインデックス1に
                        classes[2] = value;
                      });
                    }
                  },
                  hint: '組',
                ),
                const SizedBox(width: 10),
                const Text('組', style: TextStyle(fontSize: 30)),
                const SizedBox(width: 10),
                // 番号
                buildDropdown(
                  value: numbers[2],
                  items: List.generate(45, (index) {
                    final numbernumber = (index + 1).toString().padLeft(2, '0');
                    return DropdownMenuItem(
                      key: Key('number_$numbernumber'),
                      value: numbernumber,
                      child: Text(
                        numbernumber,
                        style: const TextStyle(fontFamily: "PretendardJP"),
                      ),
                    );
                  }),
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        person3[2] = int.parse(value); // 番号をインデックス2に
                        numbers[2] = value;
                      });
                    }
                  },
                  hint: '番号',
                ),
                const SizedBox(width: 10),
                const Text('番', style: TextStyle(fontSize: 30)),
              ],
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                // デバッグ用：選択された値を出力
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(200, 50),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('整理番号を発行する', style: TextStyle(fontSize: 20)),
            ),
            // デバッグ用：現在の状態を表示
            Text('person1: $person1', style: const TextStyle(fontSize: 16)),
            Text('person2: $person2', style: const TextStyle(fontSize: 16)),
            Text('person3: $person3', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
