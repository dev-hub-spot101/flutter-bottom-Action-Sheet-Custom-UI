import 'package:actionsheet/widgets/modeBottomSheet.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String sheetValue = "Thank You :)";
  void updatedValue(data) async {
    setState(() {
      sheetValue = data;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Action Sheet"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ListTile(
            //   leading: Icon(Icons.more_horiz_outlined, color: Colors.black),
            //   title: Text("Bottom Action Sheet"),
            //   subtitle: ModelBottomSheet(model:sheetValue, callbackFunction: updatedValue),
            // ),
            ElevatedButton(onPressed: (){}, child: ModelBottomSheet(model:sheetValue, callbackFunction: updatedValue))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
