
/* widgets i use here
* MaterialApp()
* SCaffold()
* Appbar()
* Text()
* Builder()
* Column()
* TextStyle()
* Image.network()
* ElevatedButton() or raisedButton()
* TextBUtton() or FlatButton()
* AlertDailog()
* */


import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Hello woeld travel title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world travel app'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(builder:( context)=>Center(
          child: Column(
            children: [
              Text(
                'Hello World Travel',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]
                ),
              ),
              const Text(
                'Discover the world',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              Image.network('https://www.istockphoto.com/photos/peshawar',
                  height:350,
              ),
              ElevatedButton(onPressed: ()=> contactuUs(context), child: Text('Contact us'),
              ),
            ],
          ),
        )
      ),
    )
    );

  }
  void contactuUs(BuildContext salman){

    showDialog(context: salman, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Contact Us'),
        content: Text('Mail us at ahhaah'),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          },
              child: Text('Close')),
        ],
      );
    }
    );
  }
}
