
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(
    MaterialApp(
      title: "sujanapps",
      home: Scaffold(
        appBar: AppBar(title: Text("sujan apps")),
        body: MyWidget(),
      ),
    ),
  );
}



class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int volume = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      padding: EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.volume_down, size: 50, color: Colors.yellow),
          Icon(Icons.volume_down, size: 50, color: Colors.yellow),
          Icon(Icons.volume_down, size: 50, color: Colors.yellow),
          IconButton(
            icon: Icon(Icons.volume_up, size: 50),
            onPressed: () {
              print("On pressed");
              setState(() {
                volume += 1;
              });
            },
          ),
          Text('$volume', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
