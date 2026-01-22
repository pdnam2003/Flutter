import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Ví dụ layout Flutter'),
              backgroundColor: Colors.blue,
            ),
            body: Padding(
                padding: const EdgeInsets.only(top:30,right:0,bottom:0,left:30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("Nam chao ae"),
                      const Text("chao dasknaldkja aptech"),
                      const Text("hao 2026"),
                    ]
                )

            )
        )

    );



  }


}