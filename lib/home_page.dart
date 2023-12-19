import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stateful Builder",
        ),
      ),
      body: StatefulBuilder(
        builder: ((BuildContext context, StateSetter setStates) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text("Counter : $counter "),
                InkWell(
                  child: TextButton(
                    onPressed: () {
                      setStates((){
                        counter++;
                      });
                    },
                    child: const 
                    Text("Increment"),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
