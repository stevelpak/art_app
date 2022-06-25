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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        elevation: 0,
        title: Image.asset(
          'assets/logo.png',
          height: 37,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              color: Color.fromARGB(255, 240, 240, 240),
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    const Text('Silent Color'),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
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
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
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
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 207, 205, 205),
                        blurRadius: 1,
                        offset: Offset(0, 1)),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF9C00),
                            Color(0xFFFFDB03),
                          ],
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        "H",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      '@openart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: const Text(
                    'Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.'),
              )
            ],
          )
        ],
      ),
    );
  }
}
