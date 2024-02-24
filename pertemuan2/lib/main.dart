import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pertemuan2/karyawan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Karyawan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Future<List<Karyawan>> readJsonData() async {
    final String response = await rootBundle.loadString('assets/Karyawan.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Karyawan.fromJSON(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
