import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  const MyWidget({Key? key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              labelText: "Name",
              hintText: "Enter your name",
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 64, 200, 191),
                fontSize: 18,
              ),
              hintStyle: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
              prefixIcon: IconButton(
                icon: Icon(_secure ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _secure = !_secure;
                  });
                },
              ),
              suffixIcon: Icon(Icons.password),
            ),
            keyboardType: TextInputType.number,
            obscureText: _secure,
            maxLength: 10,
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
