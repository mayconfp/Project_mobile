import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Together',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: const Text (
                "Together",
                style: TextStyle(
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,

                ), 
              ),
              backgroundColor: const Color.fromARGB(255, 216, 6, 118),
              centerTitle: true,
            ),
            Expanded(
              child: SizedBox(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  "imagens/tela.jpeg",
                  fit: BoxFit.contain,
                  ),
             )
              )
          ],
        ),
      ),
    );
  }
}