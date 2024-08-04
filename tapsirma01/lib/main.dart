import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Menin Birinchi Prilojeniya'),
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
  int san = 0;
  void azayt() {
    san = san - 1;
    setState(() {});
  }

  void koboyt() {
    san = san + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Тапшырма 01'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff46F3F3),
                  minimumSize: Size(294, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              onPressed: () {},
              child: Text(
                'Сан: $san',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            Container(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 69,
                  height: 44,
                  child: FloatingActionButton(
                    onPressed: () {
                      azayt();
                    },
                    backgroundColor: Color(0xff005EA6),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                Container(
                  width: 24,
                ),
                Container(
                  width: 69,
                  height: 44,
                  child: FloatingActionButton(
                    onPressed: () {
                      koboyt();
                    },
                    backgroundColor: Color(0xff005EA6),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Row _row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'data1',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
        Container(
          width: 70,
        ),
        const Text(
          'data2',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
      ],
    );
  }

  Column _column() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'data1',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
        Text(
          'data2',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
      ],
    );
  }

  ElevatedButton _button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff46F3F3),
          minimumSize: Size(294, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      onPressed: () {},
      child: Text(
        'Сан: 4',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontFamily: 'Manrope',
        ),
      ),
    );
  }
}
