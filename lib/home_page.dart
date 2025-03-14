import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 98),
          _searchBar(),
          SizedBox(height: 28),
          _breakingLine(),
          SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30),
              itemCount: card.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: SizedBox(
                    width: 338,
                    child: Cards(content: card[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _breakingLine() {
    return Center(
      child: SizedBox(
        width: 338,
        height: 15,
        child: Row(
          children: [
            Text(
              'The Latest',
              style: TextStyle(
                color: Color(0xFF3F6FE3),
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.25,
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 1,
                color: Color(0xFF3F6FE3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Center(
      child: Container(
        height: 48,
        width: 338,
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
            contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 15),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Color(0xFF3C6FE2),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.25,
              fontFamily: 'Inter',
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/search.png',
                width: 18,
                height: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String content;
  const Cards({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 333,
          width: 338,
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFF3C6FE2), width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/bluebird.png'),
                    backgroundColor: Colors.white,
                    radius: 14,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dash',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@dash.dash',
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontFamily: 'Poppins',
                          fontSize: 6,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                content,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/image1.png',
                  width: double.infinity,
                  height: 166,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/Frame4.png', width: 24, height: 24),
                      SizedBox(
                        width: 35,
                      ),
                      Image.asset('assets/Frame5.png', width: 24, height: 24),
                      SizedBox(
                        width: 35,
                      ),
                      Image.asset('assets/Frame6.png', width: 24, height: 24),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/BookmarkSimple.png',
                        width: 24,
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

List<String> card = [
  "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!",
  "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!",
  "🎓 Exciting news! I'm now a student at Flutter Training, learning more about mobile development with Flutter. Can't wait to gain new skills and become a skilled Flutter developer!",
];
