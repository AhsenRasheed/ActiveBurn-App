import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              "assets/upper circle.png",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset("assets/active_burn.png")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              const Text(
                "Get things done with Active Burn",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  "We are here to provide you fast services on the time and have all featured management system for our clients.\n Our client satisfaction is our first priority",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
