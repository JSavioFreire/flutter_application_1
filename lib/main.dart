import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer/answer.dart';
import 'package:flutter_application_1/quests/quest.dart';
import 'package:flutter_application_1/questsStore/quest_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    void respondeu() {
      setState(() {});
    }

    Random random = Random();
    int randomInt = random.nextInt(questStore.length);
    Map<String, Object> questRandom = questStore[randomInt];
    List resp = questRandom.cast()['resposta'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas'),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Quest(questRandom['quest'].toString()),
                ...resp.map(
                  (el) => Answer(el.toString(), respondeu),
                )
              ],
            )));
  }
}
