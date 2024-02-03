import 'package:flutter/material.dart';
class InBuiltType extends StatefulWidget {
  const InBuiltType({super.key});

  @override
  State<InBuiltType> createState() => _InBuitTypeState();
}

class _InBuitTypeState extends State<InBuiltType> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Switch(value: isActive, onChanged: (bool value) {
      setState(() {
        isActive=value;
      });
    });
  }
}
