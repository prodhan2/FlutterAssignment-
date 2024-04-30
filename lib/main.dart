import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      title: "wbnedfgv",
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("retyjk"),
        ),
        body: MyWidget(),
      )

    )
  );
}


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(12),
        child: Container(

          color: Colors.amber,
          child: Checkbox(value: _value, 
          onChanged: (sujan){
              print(sujan);
              setState(() {
                _value = sujan!;
                 
              });         },
              
              activeColor: Colors.red,
              checkColor: Colors.green,
              tristate: true,
             ),
              


        ),
    );

  }
}