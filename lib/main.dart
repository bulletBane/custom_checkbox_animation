import 'package:flutter/material.dart';
import 'package:radio_button_animation/checbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String groupValue = '';
  double duration = 2000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 30,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleCheckBox(
                    duration: duration.toInt(),
                    value: '1',
                    onValueChanged: (val) {
                      setState(() {
                        groupValue = val;
                      });
                    },
                    groupValue: groupValue,
                  ),
                  CircleCheckBox(
                    duration: duration.toInt(),
                    value: '2',
                    groupValue: groupValue,
                    onValueChanged: (val) {
                      setState(() {
                        groupValue = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            Text('Animation duration'),
            Slider(
              value: duration,
              onChanged: (dur) {
                setState(() {
                  duration = dur;
                });
              },
              max: 2000,
              min: 0,
            ),
            Text('${duration.toInt()} ms')
          ],
        ),
      ),
    );
  }
}
