import 'package:flutter/material.dart';
import 'package:flutter_components/utils/text_feild_with_datepicker.dart';
import 'package:flutter_components/utils/textfeild.dart';
import 'package:flutter_components/utils/textfeild_withdropdown.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController displayDateController=TextEditingController();
  TextEditingController actualDateController=TextEditingController();
  List<Model> educationList = [
    Model(name: "Select Education"),
    Model(name: "School"),
    Model(name: "UnderGraduate"),
    Model(name: "PostGraduate")
  ];
  Model? selectedEducation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedEducation=educationList[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Field(controller: nameController, hintText: "First Name"),
              const SizedBox(height: 20,),
              DropFieldWidget(title: "Field with Drop down", valueList: educationList, selectedValue: selectedEducation!, onChange: (value){
                setState(() {
                  selectedEducation=value;
                });
              }),
              FieldWithDatePicker(name: 'Date of Birth', controller: displayDateController,controller2: actualDateController,)
              
            ],
        
        
          ),
        ),
      ),

    );
  }
}

