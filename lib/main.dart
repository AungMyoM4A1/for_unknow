import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List mainNum = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int mainEngNum = 1;
  int score = 0;
  List firstThreeNum = [];
  void getRandomNum(){
    mainNum.shuffle();
    firstThreeNum = mainNum.sublist(0, 3);
    firstThreeNum.shuffle();
    mainEngNum = firstThreeNum[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: Text('Select the number : $mainEngNum', style: const TextStyle(color: Colors.green, fontSize: 20),),
            ),
            InkWell(
              onTap: () {
                if(mainNum[0] == mainEngNum){
                  setState(() {
                      score += 1;
                  });
                  final snackBar = SnackBar(content: const Text('Corret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }else{
                  final snackBar = SnackBar(content: const Text('Incorret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Image(image: AssetImage('images/${mainNum[0]}.png'), width: 150, height: 150,)
              ),
               InkWell(
              onTap: () {
                if(mainNum[1] == mainEngNum){
                  setState(() {
                      score += 1;
                  });
                  final snackBar = SnackBar(content: const Text('Corret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }else{
                  final snackBar = SnackBar(content: const Text('Incorret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Image(image: AssetImage('images/${mainNum[1]}.png'), width: 150, height: 150,)
              ),
               InkWell(
              onTap: () {
                if(mainNum[2] == mainEngNum){
                  setState(() {
                      score += 1;
                  });
                  final snackBar = SnackBar(content: const Text('Corret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }else{
                  final snackBar = SnackBar(content: const Text('Incorret'), action: SnackBarAction(label: 'Undo', onPressed: (){}),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Image(image: AssetImage('images/${mainNum[2]}.png'), width: 150, height: 150,)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 60),
                child: ElevatedButton(
                  style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(150, 50))),
                  onPressed: (){
                    setState(() {
                      getRandomNum();
                  });
                  },
                  child: const Text('Refresh')
                  ),
              ),
                Text('Score: $score', style: const TextStyle(fontSize: 20, color: Colors.green),)
          ],
        ),
      ),
    );
  }
}