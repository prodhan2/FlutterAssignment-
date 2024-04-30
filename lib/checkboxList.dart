
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
runApp(
   MaterialApp(
    home: Scaffold(
      appBar: AppBar(
      
        title: Text("Sujan Prodhan"),
        backgroundColor: Color.fromARGB(255, 5, 222, 238),
        leading: Icon(Icons.abc),
      ),
      body : MyWidget()
    ),
    )


);


}



class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _value= false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child : Container(
        color: Color.fromARGB(255, 113, 24, 196),
        child: CheckboxListTile(
          value : _value ,
          onChanged: (value)
          {
            setState(()
            {
             _value = value!;
             print(_value);
            });
          },
          title: Text("sujan prodhan"),
          subtitle: Text("hi this is sujan proshan hjbhjdbn  nb n nbbb bj"),
          secondary: Icon(Icons.manage_history_sharp),
          checkColor: Color.fromARGB(255, 0, 233, 233),
          activeColor: Color.fromARGB(255, 4, 237, 12),
          tileColor: Color.fromARGB(255, 0, 233, 233),
          controlAffinity: ListTileControlAffinity.leading,
          selected:  _value ,

          
          ),
      )
    );
  }
}