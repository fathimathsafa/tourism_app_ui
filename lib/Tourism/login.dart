import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app_ui/Tourism/travel_main.dart';

class Travel_Login extends StatelessWidget {
  const Travel_Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dG91aXJzdCUyMHBsYWNlJTIwcGljfGVufDB8fDB8fHww"),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                left: 55,
                top: 600,
                child: Container(
                    height: 75,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Travel_Main()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white70),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text(
                                " Get Started",
                                style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF3F51B5),
                                size: 30,
                              )
                            ],
                          ),
                        ))),
              )
            ],
          )),
    );
  }
}
