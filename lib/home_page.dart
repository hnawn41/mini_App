import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 98,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 338,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF3C6FE2),
                    width: 1,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Color(0xFF3C6FE2)),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: SizedBox(
                        width: 18, // 👈 Ensures icon has fixed size
                        height: 18,
                        child: Image.asset(
                          'assets/search.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
