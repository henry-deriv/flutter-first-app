import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_circle_left),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('hello');
            },
            icon: const Icon(Icons.wallet),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/image1.png'),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              color: Colors.red,
              thickness: 3.0,
            ),
            Container(
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                  child: Text(
                'This is a container',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.purple),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text(
                'Elevated Button',
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text(
                'Outlined Button',
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('pressed');
              },
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 192, 3, 3),
                  ),
                  Text('Fire Fire'),
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 192, 3, 3),
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
                debugPrint(isSwitch.toString());
              },
            ),
            Checkbox(
                value: checked,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checked = isChecked;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
