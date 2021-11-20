import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonRoute extends StatelessWidget {
  final String? text;
  final String? route;

  const ButtonRoute({Key? key, required this.text, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _theColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(route!, arguments: {'color': _theColor});
        },
        child: SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  spreadRadius: .5,
                ),
              ],
              color: _theColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  text!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
