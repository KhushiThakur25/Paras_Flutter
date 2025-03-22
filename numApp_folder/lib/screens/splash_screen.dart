import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:numerology_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AudioPlayer _player;

  void initState() {
    super.initState();
    _player = AudioPlayer();
    _playMusic();

    Future.delayed(Duration(seconds: 4), () {
      _player.stop();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  Future<void> _playMusic() async {
    try {
      await _player.setReleaseMode(ReleaseMode.loop);
      await _player.setVolume(0.5);
      await _player.play(AssetSource('music/bell.mp3'));
    } catch (e) {
      debugPrint("Error playing music: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 49, 1, 62),
              const Color.fromARGB(255, 161, 19, 149),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/pandit-ji.png', height: 180),
                SizedBox(height: 10),
                Text(
                  "Unlock the secrets of number, discover your destiny",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.amber,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Numerology App",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Powered by Brainmentors Pvt Ltd",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 236, 229, 229),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
