import 'package:flutter/material.dart';
import 'package:flutter_components/components/custom_dialog.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlertDialog"),),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            _showMyDialog(context);
          }, child:const Text("In-Build")),
           Container(height: 20,),
          ElevatedButton(onPressed: (){
            _showCustomDialog(context);
          }, child:const Text("Custom")),

        ],

      ),

    );
  }
  //// In Build Method////
  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  ////// for Custom Dialog//////
  _showCustomDialog(context){
    showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: const  AddTruckDialogBox()
          );


        }
    );

  }
}
