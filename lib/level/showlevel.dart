import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class showlevel extends StatefulWidget {
  const showlevel({Key? key}) : super(key: key);

  @override
  State<showlevel> createState() => _showlevelState();
}

class _showlevelState extends State<showlevel> {
  bool switchValue = false;
  var percent = 0.6;
  onChanged(bool value) {
    setState(() {
      switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Level Indicator'),

        // leading: const Icon(Icons.menu),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 158, 250),
              Color.fromARGB(255, 62, 114, 182),
              Color.fromARGB(255, 55, 80, 163),
              Color.fromARGB(255, 48, 61, 138),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 5, 4, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              customSwitch(switchValue, onChanged),
              SizedBox(
                height: 150,
              ),
              level(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customSwitch(bool val, Function onChanged) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Switch",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Color.fromARGB(255, 3, 79, 141),
              value: val,
              onChanged: (newvalue) => onChanged(newvalue)),
        ],
      ),
    );
  }

  Widget level() {
    return switchValue
        ? Container(
            child: Center(
                child: CircularPercentIndicator(
              radius: 150.0,
              lineWidth: 20.0,
              animation: true,
              percent: percent,
              center: Text(
                "${(percent * 100).toStringAsFixed(0)}%",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              footer: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Water Level",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blue,
              backgroundColor: Colors.blue.shade100,
            )),
          )
        : Container(
            child: Center(child: Text("Please Switch On")),
          );
  }
}
