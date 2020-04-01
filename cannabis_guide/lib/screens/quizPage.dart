import 'package:flutter/material.dart';
import 'package:cannabisguide/constants.dart';

enum theWhy { indica, sativa, cbd }
enum theWhen { morning, night, whenever }
enum theControl { yes, no }
enum theHistory { yes, no }
enum theLocation { yes, no }

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  theWhy _why = theWhy.cbd;
  theWhen _when = theWhen.whenever;
  theControl _control = theControl.yes;
  theHistory _history = theHistory.no;
  theLocation _location = theLocation.no;
  //var _suggestion = "Nothing"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Why do you want to smoke?',
                style: kQuestionStyle,
                textAlign: TextAlign.center,
              ),
              RadioListTile<theWhy>(
                title: const Text('To get high'),
                value: theWhy.indica,
                groupValue: _why,
                activeColor: Colors.amber[800],
                onChanged: (theWhy value) {
                  setState(() {
                    _why = value;
                  });
                },
              ),
              RadioListTile<theWhy>(
                title: const Text('Avoid meds'),
                value: theWhy.sativa,
                groupValue: _why,
                activeColor: Colors.amber[800],
                onChanged: (theWhy value) {
                  setState(() {
                    _why = value;
                  });
                },
              ),
              RadioListTile<theWhy>(
                title: const Text('Medical relief'),
                value: theWhy.cbd,
                groupValue: _why,
                activeColor: Colors.amber[800],
                onChanged: (theWhy value) {
                  setState(() {
                    _why = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'When do you want to smoke?',
                style: kQuestionStyle,
                textAlign: TextAlign.center,
              ),
              RadioListTile<theWhen>(
                title: const Text('Morning'),
                value: theWhen.morning,
                groupValue: _when,
                activeColor: Colors.amber[800],
                onChanged: (theWhen value) {
                  setState(() {
                    _when = value;
                  });
                },
              ),
              RadioListTile<theWhen>(
                title: const Text('Evening/Bedtime'),
                value: theWhen.night,
                groupValue: _when,
                activeColor: Colors.amber[800],
                onChanged: (theWhen value) {
                  setState(() {
                    _when = value;
                  });
                },
              ),
              RadioListTile<theWhen>(
                title: const Text('Whenever'),
                value: theWhen.whenever,
                groupValue: _when,
                activeColor: Colors.amber[800],
                onChanged: (theWhen value) {
                  setState(() {
                    _when = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'Is controlling your high important?',
                style: kQuestionStyle,
                textAlign: TextAlign.center,
              ),
              RadioListTile<theControl>(
                title: const Text('Yes'),
                value: theControl.yes,
                groupValue: _control,
                activeColor: Colors.amber[800],
                onChanged: (theControl value) {
                  setState(() {
                    _control = value;
                  });
                },
              ),
              RadioListTile<theControl>(
                title: const Text('No'),
                value: theControl.no,
                groupValue: _control,
                activeColor: Colors.amber[800],
                onChanged: (theControl value) {
                  setState(() {
                    _control = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'Have you smoked before?',
                style: kQuestionStyle,
                textAlign: TextAlign.center,
              ),
              RadioListTile<theHistory>(
                title: const Text('Yes'),
                value: theHistory.yes,
                groupValue: _history,
                activeColor: Colors.amber[800],
                onChanged: (theHistory value) {
                  setState(() {
                    _history = value;
                  });
                },
              ),
              RadioListTile<theHistory>(
                title: const Text('No'),
                value: theHistory.no,
                groupValue: _history,
                activeColor: Colors.amber[800],
                onChanged: (theHistory value) {
                  setState(() {
                    _history = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'Do you live in a recreational state?',
                style: kQuestionStyle,
                textAlign: TextAlign.center,
              ),
              RadioListTile<theLocation>(
                title: const Text('Yes'),
                value: theLocation.yes,
                groupValue: _location,
                activeColor: Colors.amber[800],
                onChanged: (theLocation value) {
                  setState(() {
                    _location = value;
                  });
                },
              ),
              RadioListTile<theLocation>(
                title: const Text('No'),
                value: theLocation.no,
                groupValue: _location,
                activeColor: Colors.amber[800],
                onChanged: (theLocation value) {
                  setState(() {
                    _location = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.amber[800]),
                    ),
                    color: Colors.amber[800],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      _why = theWhy.cbd;
                      _when = theWhen.whenever;
                      _control = theControl.yes;
                      _history = theHistory.no;
                      _location = theLocation.no;
                      print("I'm hit");
                    },
                    child: Text(
                      "CLEAR",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.amber[800])),
                    color: Colors.amber[800],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      showDialog(
                        context: context,
                        child: AlertDialog(
                          title: Text("Results are here!"),
                          content: Text("It\'s recommended that you try "),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
