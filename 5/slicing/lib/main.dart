import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: Colors.red.shade900,
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halo halo'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 250,
              backgroundImage: AssetImage('images/gyro-2.png'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    label: const Text('Facebook'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                  ),
                  const SizedBox(height: 8), 
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Github'),
                    icon: const Icon(Icons.get_app_rounded),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50)),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Instagram'),
                    icon: const Icon(Icons.camera_alt),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
