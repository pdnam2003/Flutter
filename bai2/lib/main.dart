import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {

  LoginPage({super.key});

  final TextEditingController username = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login app'),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: username,
            decoration: const InputDecoration(
              labelText: 'username',
              border: OutlineInputBorder(),
            ),
          ),


          const SizedBox(height: 50, width: 100,),

          TextField(
            controller: pass,
            decoration: const InputDecoration(
              labelText: 'password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 50, width: 100,),

          ElevatedButton(onPressed: () {
            Navigator.push(
              contex, MaterialPageRoute(builder: (contex) => HelloPage(),
            ),
            );
          },
              child: const Text("Login")
          )
        ],
      )
    ),);

  }
}

//hello page sau khi dang nhap
class HelloPage extends StatelessWidget {
  const  HelloPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: const Center(
        child: Text('hello word',
          style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}






