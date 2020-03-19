
import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

AudioCache audioPlayer = AudioCache();

List<NumberAudio> numberList= [

  NumberAudio("one.wav", Colors.red,"One"),
  NumberAudio("two.wav", Colors.blue,"Two"),
  NumberAudio("three.wav", Colors.green,"Three"),
  NumberAudio("four.wav", Colors.orange,"Four"),
  NumberAudio("five.wav", Colors.purple,"Five"),
  NumberAudio("six.wav", Colors.grey,"Six"),
  NumberAudio("seven.wav", Colors.yellow,"Seven"),
  NumberAudio("eight.wav", Colors.teal,"Eight"),
  NumberAudio("nine.wav", Colors.brown,"Nine"),
  NumberAudio("ten.wav", Colors.lime,"Ten"),
];

//TODO: Build a method that plays audio
play(String uri){
  audioPlayer.play(uri);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number Audio'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
                ),
                Expanded(child: GridView.builder(
                  padding:  EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context,i)=> SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child: RaisedButton(
                      onPressed: (){
                        play(numberList[i].audioUri);
                      },
                      color: numberList[i].buttonColor,
                      child: Text(numberList[i].buttonText,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),)
                      ),
                  ),
                ),
                
                ),
            ]
          ),
        ),
      ),
    );
  }
}