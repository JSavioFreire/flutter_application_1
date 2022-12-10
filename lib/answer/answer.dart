import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final String resp;
  final Function respondeu;

  const Answer(this.resp, this.respondeu, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => respondeu(),
          child: Text(
            resp,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      )
    ]);
  }
}
