import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtApp(),
    );
  }
}

class ArtApp extends StatefulWidget {
  const ArtApp({Key? key}) : super(key: key);

  @override
  State<ArtApp> createState() => _ArtAppState();
}

class _ArtAppState extends State<ArtApp> {
  final Color scaffoldColor = const Color(0xfff8f8f8);
  final Color textColor1 = const Color(0xff333333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        elevation: 0,
        title: Image.asset(
          'assets/logo.png',
          height: 37,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: textColor1,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Image.asset(
              'assets/main_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              const Text('Silent Color'),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: scaffoldColor,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 230, 212, 212),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                  splashRadius: 25,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: scaffoldColor,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 230, 212, 212),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.file_upload_outlined),
                  splashRadius: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
