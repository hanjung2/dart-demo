import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SetRepNumInput extends StatefulWidget {
  int weight;
  int set;

  SetRepNumInput({super.key, this.weight = 0, this.set = 0});

  @override
  State<StatefulWidget> createState() => _SetRepNumInput();
}

class _SetRepNumInput extends State<SetRepNumInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        numInputField(),
        const Icon(FontAwesomeIcons.xmark),
        numInputField(),
      ],
    );
  }

  Widget numInputField() {
    return Flexible(
      child: TextFormField(
        decoration: const InputDecoration(),
      ),
    );
  }
}
