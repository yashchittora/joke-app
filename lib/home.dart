import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  List<String> jokes = [
    "Why don't scientists trust atoms? Because they make up everything.",
    "Why was the math book sad? Because it had too many problems.",
    "What do you call fake spaghetti? An impasta.",
    "Why couldn't the bicycle stand up by itself? It was two-tired.",
    "What did one wall say to the other wall? 'I'll meet you at the corner.'",
    "Why did the scarecrow win an award? Because he was outstanding in his field.",
    "What do you call cheese that isn't yours? Nacho cheese.",
    "How do you organize a space party? You planet.",
    "Why don't skeletons fight each other? They don't have the guts.",
    "What do you get when you cross a snowman and a vampire? Frostbite.",
    "Why did the tomato turn red? Because it saw the salad dressing.",
    "What do you call a bear with no teeth? A gummy bear.",
    "Why did the golfer bring two pairs of pants? In case he got a hole in one.",
    "What do you call a fish with no eyes? Fsh.",
    "What do you call an alligator in a vest? An in-vest-igator.",
    "Why don't skeletons go to scary movies? They don't have the guts.",
    "Why did the coffee file a police report? It got mugged.",
    "What did one hat say to the other? 'You stay here, I'll go on ahead.'",
    "Why did the tomato turn red? Because it saw the salad dressing.",
    "Why did the bicycle fall over? Because it was two-tired.",
  ];

  void increase() {
    setState(() {
      // count = (count + 1) % jokes.length;
      count += 1;
      if (count == jokes.length) {
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jokes",
        ),
        backgroundColor: Colors.pink.shade200,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32), color: Colors.red),
                height: 200,
                width: 250,
                child: Center(
                  child: Text(
                    jokes[count].toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              
              ElevatedButton(
                onPressed: (){
                  increase();
                  HapticFeedback.heavyImpact();
                  },
                child: const Text("Change Joke",
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                  backgroundColor: Colors.black
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
