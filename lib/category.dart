import 'package:flutter/material.dart';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';

class Category extends StatefulWidget {
  final String title;
  const Category({Key key, this.title}) : super(key: key);

  @override
  Speak createState() => Speak();
}

class Speak  extends State<Category>{
  @override
  void initState() {
    super.initState();
    VoiceController controller = FlutterTextToSpeech.instance.voiceController();
    controller.init().then((_) {
      controller.speak(
        "This is ${widget.title}",
        VoiceControllerOptions(speechRate: 0.9, pitch:1, delay: 0),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(
            fontFamily: 'Merienda',
            fontSize: 30,
            //  color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),

      body: Container(
        child:
        Container(
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff36004f),
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),

                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    //color: Colors.blueAccent,
                    child: Image(
                      image: AssetImage('img/${widget.title}.jpg'),
                      width: 300,
                      height: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ), //container

              SizedBox(
                height: 30.0,
              ),

              Text(
                'This is ${widget.title}',
                style: TextStyle(
                  fontFamily: 'Arvo',
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),

            ],
          ),
        ),
      ),

    );
  }
}
