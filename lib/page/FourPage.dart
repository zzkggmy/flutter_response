import 'package:flutter/cupertino.dart';

class Fourpage extends StatefulWidget {
  @override
  createState() => FourState();
}

class FourState extends State<Fourpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Four();
  }
}

Widget Four() {
  return Center(
    child: Text("Four"),
  );
}
