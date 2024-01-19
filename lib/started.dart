import 'package:coffee/main_page.dart';
import 'package:flutter/material.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(child: Container(color: const Color(0xFFFAFAFC))),
          SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  color: Colors.white,
                  height: 200,
                  width: double.infinity,
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/coffee.png")))),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      "Lets meet our summer coffee drinks",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Text("nananananannananananananannana")),
                Container(
                  width: double.infinity,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  margin: const EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28))),
                    child: const Text("Get Started",
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
