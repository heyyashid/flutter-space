import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 203, 235),
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
        backgroundColor: const Color.fromARGB(255, 100, 179, 218),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Occupy Your Seat",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, "busbooking");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Book your seat "),
                      Icon(Icons.arrow_circle_right_outlined)
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}