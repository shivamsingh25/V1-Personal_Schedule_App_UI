import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'V1 - Personal Schedule View (Light & Dark Mode)',
        home: DarkView(),
        debugShowCheckedModeBanner: false);
  }
}

class LightView extends StatefulWidget {
  @override
  _LightViewState createState() => _LightViewState();
}

class _LightViewState extends State<LightView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Align(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffde4324),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/400"),
                radius: 130,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "Maggie Carroll",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30
                  )
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                child: Text(
                  "+48 875 392 402",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                width: 380,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "23 May 2019",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ]
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 100,
                      width: double.maxFinite,
                      child: Card(
                        color: Color(0xfff9a232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 15.0, top: 10.0),
                                        child: Text(
                                          "09:30 - 11:30",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                        ),
                                      )
                                  )
                                ),
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0, top: 5.0),
                                      child: Text(
                                        "Tennis", 
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30.0, left: 210.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 100,
                      width: double.maxFinite,
                      child: Card(
                        color: Color(0xff1f9c8f),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 15.0, top: 10.0),
                                        child: Text(
                                          "09:30 - 11:30",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                        ),
                                      )
                                  )
                                ),
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0, top: 5.0),
                                      child: Text(
                                        "Tennis", 
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30.0, left: 210.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: new Theme(data: Theme.of(context).copyWith(
        canvasColor: Color(0xffd9e1e6),
        textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.black)) 
      ), child: BottomNavigationBar(
        selectedItemColor: Color(0xffde4323),
        unselectedItemColor: Colors.black,
        onTap: (index) {
        setState(() {
          _currentIndex = index;
        });},
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Container(height: 0.0)),
          ]
      )),
    );
  }
}



// -> Dark Mode of APP

class DarkView extends StatefulWidget {
  @override
  _DarkViewState createState() => _DarkViewState();
}

class _DarkViewState extends State<DarkView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090706),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Align(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffde4324),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/400"),
                radius: 130,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "Violet Reyes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white,
                  )
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                child: Text(
                  "+48 875 392 402",
                  style: TextStyle(fontSize: 18, color: Colors.white,),
                ),
              ),
              SizedBox(
                width: 380,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "23 May 2019",
                              style: TextStyle(fontSize: 20, color: Colors.white,),
                            ),
                          )
                        ]
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 100,
                      width: double.maxFinite,
                      child: Card(
                        color: Color(0xff403b8d),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 15.0, top: 10.0),
                                        child: Text(
                                          "09:30 - 11:30",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                        ),
                                      )
                                  )
                                ),
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0, top: 5.0),
                                      child: Text(
                                        "Tennis", 
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30.0, left: 210.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 100,
                      width: double.maxFinite,
                      child: Card(
                        color: Color(0xffde4324),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 15.0, top: 10.0),
                                        child: Text(
                                          "09:30 - 11:30",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                        ),
                                      )
                                  )
                                ),
                                SizedBox(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0, top: 5.0),
                                      child: Text(
                                        "Tennis", 
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30.0, left: 210.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: new Theme(data: Theme.of(context).copyWith(
        canvasColor: Color(0xff090706),
        textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.black)) 
      ), child: BottomNavigationBar(
        selectedItemColor: Color(0xffde4323),
        unselectedItemColor: Color(0xffb6bcba),
        onTap: (index) {
        setState(() {
          _currentIndex = index;
        });},
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Container(height: 0.0)),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Container(height: 0.0)),
          ]
      )),
    );
  }
}
