import 'package:flutter/material.dart';
import 'next_page.dart';

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _eventlist=[] ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: const Center(child: Text('Event Scheduler',
            style: TextStyle(fontSize: 23,color: Colors.white),

          )),
          backgroundColor: Colors.deepPurpleAccent[700],

        ),
        body:
        Center(
          child: ListView.builder(

            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: _eventlist.length,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_eventlist[index],

                      textAlign: TextAlign.center,
                    ),
                  ),

                ),
              );


            },
          ),
        ),
        floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                backgroundColor: Colors.deepPurpleAccent[700],
                onPressed: () async{
                  String input_event =await Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => next_page()));
                  setState(() {
                    _eventlist.add(input_event);
                  });
                },
                child: const Icon(Icons.add),
              );
            }
        ),
      ),
    );
  }
}



