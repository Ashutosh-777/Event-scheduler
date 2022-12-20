import 'package:flutter/material.dart';
import 'homepage.dart';


class next_page extends StatefulWidget {
  const next_page({Key? key}) : super(key: key);

  @override
  State<next_page> createState() => _next_pageState();
}

class _next_pageState extends State<next_page> {
  final TextEditingController textfield_input_controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('New Event'),
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(

                  enabled: true,
                  onTap: () {

                  },

                  cursorColor: Colors.deepPurpleAccent[700],
                  controller: textfield_input_controller,
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(

                        color: Colors.deepPurpleAccent
                      ),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(

                          color: Colors.deepPurpleAccent
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.deepPurpleAccent,

                    prefixIcon: const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    hintText: 'Event',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  style: const TextStyle(

                    fontSize: 24,
                  ),
                  minLines: 1,
                  maxLines: 8,
                ),
              ),

        SizedBox(
                    width: 420,
                    height: 60,
                    child: Builder(
                      builder: (context) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            backgroundColor: Colors.grey,
                          ),
                          onPressed: () {
                            String Textfield_input = textfield_input_controller.text;

                            Navigator.of(context).pop(Textfield_input);
                            debugPrint(Textfield_input);

                          },
                          child: const Text(
                            'ADD',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        );
                      }
                    ),
                  )


            ],
          ),
        ),
      );

  }
}
