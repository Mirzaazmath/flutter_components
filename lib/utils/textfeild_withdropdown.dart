import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/utils/text_utils.dart';

class DropFieldWidget extends StatelessWidget {
 final  String title;
 final List<Model> valueList;
 final Model selectedValue;
 final Function(Model) onChange;
  const DropFieldWidget({super.key, required this.title,
    required  this.valueList,
     required this.selectedValue,
    required  this.onChange,});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtil(
          text: title,
          weight: true,
          size: 15,
        ),
        const SizedBox(
          height: 5,
        ),
        valueList.isEmpty
            ? Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
        )
            : Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Model>(
                isExpanded: true,
                value: selectedValue,
                onChanged: (Model? value) {
                  onChange(value!);
                },
                items:
                valueList.map<DropdownMenuItem<Model>>((element) {
                  return DropdownMenuItem<Model>(
                      value: element, child: Text(element.name.toString()));
                }).toList(),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}


class Model {
  int? id;
  String? name;
  String? code;
  String? description;

  Model(
      {this.id,
        this.name,
        this.code,
        this.description});

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['description'] = description;
    return data;
  }
}
