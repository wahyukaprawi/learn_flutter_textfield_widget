import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Text Field'),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const TextField(
                      autocorrect: false,
                      autofocus: true,
                      enableInteractiveSelection: true,
                      keyboardType:
                          TextInputType.text, //untuk mengatur tipe keyboard
                      decoration: InputDecoration(
                        hintText: "Please input your name...",
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        autocorrect: false,
                        autofocus: true,
                        enableInteractiveSelection: true,
                        keyboardType:
                            TextInputType.none, //untuk mengatur tipe keyboard
                        decoration: InputDecoration(
                          hintText: "Please input your email...",
                          labelText: "Your Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        autocorrect: false,
                        autofocus: true,
                        enableInteractiveSelection: true,
                        obscureText: true, //untuk password
                        keyboardType:
                            TextInputType.none, //untuk mengatur tipe keyboard
                        decoration: InputDecoration(
                          hintText: "Please input your password...",
                          labelText: "Your Password",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
