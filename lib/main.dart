import 'package:flutter/material.dart';

void main() {
  runApp(const VibraApp());
}

class VibraApp extends StatelessWidget {
  const VibraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vibra',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final rooms = [
      ['Music Lovers 🎵', '12 people', 'LIVE'],
      ['Friends Hangout 💜', '8 people', 'LIVE'],
      ['Gaming Zone 🎮', '16 people', 'LIVE'],
      ['Late Night Talks 🌙', '5 people', 'LIVE'],
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF100D24),
      appBar: AppBar(
        backgroundColor: const Color(0xFF100D24),
        title: const Text(
          'VIBRA',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.purpleAccent,
          ),
        ),
        actions: const [
          Icon(Icons.notifications_none, size: 28),
          SizedBox(width: 20),
          Icon(Icons.account_circle_outlined, size: 28),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'Welcome to Vibra 👋',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Connect. Talk. Make Friends.',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Icon(Icons.graphic_eq, size: 55),
                SizedBox(height: 10),
                Text(
                  'Find Your Voice Room',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text('Meet new people and talk live'),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Live Voice Rooms 🔴',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          ...rooms.map((room) => Card(
                color: const Color(0xFF211B3D),
                margin: const EdgeInsets.only(bottom: 13),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(Icons.mic, color: Colors.white),
                  ),
                  title: Text(
                    room[0],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(room[1]),
                  trailing: Text(
                    room[2],
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF211B3D),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 35),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
