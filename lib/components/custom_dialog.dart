
import 'package:flutter/material.dart';

import '../utils/custom_button.dart';
import '../utils/custom_toast.dart';
import '../utils/global_text.dart';
import '../utils/global_text_field.dart';


class AddTruckDialogBox extends StatefulWidget {
  const AddTruckDialogBox({super.key});
  @override
  _AddTruckDialogBoxState createState() => _AddTruckDialogBoxState();
}
class _AddTruckDialogBoxState extends State<AddTruckDialogBox> {
  TextEditingController truckNumberontroller=TextEditingController();
  TextEditingController loadCapacityController=TextEditingController();
  TextEditingController manufactureCompanyController=TextEditingController();
  TextEditingController insuranceController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const  EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const   TextUtil(text: 'Add Truck',size: 24,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:const  Icon(Icons.close))
              ],
            ),
            const SizedBox(height: 24,),
            Field(controller: truckNumberontroller, hintText: 'Truck Number',),
            const SizedBox(height: 16,),
            Field(controller: loadCapacityController, hintText: 'Load Capacity',isNumberType: true,),
            const SizedBox(height: 16,),
            Field(controller: manufactureCompanyController, hintText: 'Manufacture Company',),
            const SizedBox(height: 16,),
            Field(controller: insuranceController, hintText: 'Insurance Details',),
            const SizedBox(height: 40,),
            ColorBtn(title: "Save Truck", onTap: (){
              Navigator.pop(context);
              showSnackBar(context,"Truck Added Successfully");
            })
          ],
        ),
      ),
    );
  }
}
