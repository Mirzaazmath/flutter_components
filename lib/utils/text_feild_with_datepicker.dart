

import 'package:flutter/material.dart';
import 'package:flutter_components/utils/text_utils.dart';
import 'package:intl/intl.dart';
final displaydateFormatter = DateFormat("yyyy-MM-dd");
class FieldWithDatePicker extends StatelessWidget {
  final  String name;
  final TextEditingController controller;
  final TextEditingController controller2;
  int? length;
   FieldWithDatePicker({super.key, required this. name,
    required this. controller,
    required this. controller2, this. length});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextUtil(
            text: name,
            weight: true,
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  //which date will display when user open the picker
                  firstDate: DateTime(1950),
                  //what will be the previous supported year in picker
                  lastDate: DateTime
                      .now()) //what will be the up to supported date in picker
                  .then((pickedDate) {
                //then usually do the future job
                if (pickedDate == null) {
                  //if user tap cancel then this function will stop
                  return;
                } else {
                  controller.text = displaydateFormatter
                      .format(DateTime.parse(pickedDate.toString()));
                  pickedDate.toString();
                  controller2.text = pickedDate.toString();
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: TextFormField(
                maxLines: length ?? 1,
                enabled: false,
                controller: controller,
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}


