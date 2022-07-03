import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController xEditingController = TextEditingController();
  TextEditingController yEditingController = TextEditingController();
  double _result = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
        child: Column(
            children:[
              SizedBox(height:50,),
              Row(
          children:[
            const SizedBox(width: 20,),
           SizedBox(
             width:100,
            child:TextField(
              controller: xEditingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
           ),
            const SizedBox(width: 20,),
            SizedBox(
                width:100,
                child:TextField(
                  controller: yEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
            ),
            const SizedBox(width: 20,),
            Text('結果 : $_result', style: TextStyle(fontSize: 18, color: Colors.black),
            ),
         ],
              ),
              const SizedBox(height: 20,),
         Row(
      children: [
        const SizedBox(width: 50,),
        ElevatedButton(
          onPressed: (){
            setState(() {
            _result = double.parse(xEditingController.text)+double.parse(yEditingController.text);});
          },
          child: Text('+',),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
              _result = double.parse(xEditingController.text)-double.parse(yEditingController.text);});
          },
          child: Text('-',),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
              _result = double.parse(xEditingController.text)*double.parse(yEditingController.text);});
          },
          child: Text('×',),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
              _result = double.parse(xEditingController.text)/double.parse(yEditingController.text);});
          },
          child: Text('÷',),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
          ),
        ),
    ],
    ),
    ],
        ),
    ),
    );
  }
}

