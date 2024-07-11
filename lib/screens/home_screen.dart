import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assalamualaikum, Astiya',
              style: TextStyle(color: Color(0xFF332885)),
            ),
            Text(
              'Bogor, 10 Januari 2023',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  MenuButton(
                      icon: 'assets/icons/alquran.png',
                      width: 220,
                      height: 220),
                  MenuButton(
                      icon: 'assets/icons/doa.png', width: 220, height: 199),
                  MenuButton(
                      icon: 'assets/icons/solawat.png',
                      width: 160,
                      height: 160),
                  Center(
                    child: MenuButton(
                        icon: 'assets/icons/asmaul_husna.png',
                        width: 240, // Increased width
                        height: 240), // Increased height
                  ),
                  Center(
                    child: MenuButton(
                        icon: 'assets/icons/solat.png',
                        width: 240, // Increased width
                        height: 240), // Increased height
                  ),
                ],
              ),
              SizedBox(height: 20),
              LastReadSection(),
              SizedBox(height: 20),
              PrayerTimeSection(),
              SizedBox(height: 20),
              NotesSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              color: Color(0xFF332885), // Same color as 'Assalamualaikum' text
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/book.png'),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/clock.png'),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profilee.png'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String icon;
  final double width;
  final double height;

  MenuButton({required this.icon, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Image.asset(icon, width: width - 10, height: height - 10),
      ),
    );
  }
}

class LastReadSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color(0xFF3B97ED),
            Color(0xFFCA74FF),
            Color.fromRGBO(255, 120, 193, 0.82),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Last read',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 13)),
              Text('Al-Baqorah',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Container(
                width: 150,
                child: LinearProgressIndicator(
                  value: 0.15,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Image.asset('assets/icons/quran_book.png', width: 140, height: 140),
        ],
      ),
    );
  }
}

class PrayerTimeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Color(0xFF6877FF), Color(0xFF35F8A6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Maghrib 17:30 WIB',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
              Text('20:30:10 Menjelang Azan',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 11)),
            ],
          ),
          Image.asset('assets/icons/clock_location.png',
              width: 140, height: 140),
        ],
      ),
    );
  }
}

class NotesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Notes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: NoteCard(
                date: '27 Juni',
                content: 'Al-Fatihah 1 - Al-Baqoroh 200',
                status: 'Progress',
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              child: NoteCard(
                date: '26 Juni',
                content: 'Al-Fatihah 1 - Al-Baqoroh 200',
                status: 'Done',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NoteCard extends StatelessWidget {
  final String date;
  final String content;
  final String status;

  NoteCard({required this.date, required this.content, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 66,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFE3F2FD), // Light blue color for background
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0x4D433FFF)), // Light blue border
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(date, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text(content,
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          SizedBox(width: 10), // Add some space between the text and the chip
          Chip(
            label: Text(status, style: TextStyle(fontSize: 6)),
            backgroundColor: status == 'Done' ? Colors.green : Colors.orange,
            padding: EdgeInsets.symmetric(horizontal: 1, vertical: 0.1),
            labelPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
