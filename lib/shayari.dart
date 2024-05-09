import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SPage extends StatefulWidget {
  const SPage({super.key});

  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  int count = 0;
  List<String> jokes = [
    "ज़िन्दगी है खेल कुछ पाने का, हार कर जीतने का इरादा रखना सीखो.",
    "हर पल एक नया मौका है, हौसला रखो और आगे बढ़ो.",
    "मुस्कराहट ही जिंदगी की राह है, ग़म को दिल में कभी मत रखना.",
    "सच्ची खुशी अपने आप में है, दूसरों से उम्मीदें लगाना छोड़ो.",
    "वक्त बदलता रहता है, हर हाल में खुद पर भरोसा रखो.",
    "दोस्ती ही सबसे खूबसूरत रिश्ता है, इसे दिल खोलकर निभाना सीखो.",
    "किसी की राह आसान नहीं होती, मंजिल तक पहुंचने के लिए मेहनत जरूरी है.",
    "खुद पर विश्वास रखो, सपने जरूर पूरे होंगे.",
    "ज़िन्दगी में कभी हार मत मानो, कोशिश करते रहो, सफलता जरूर मिलेगी.",
    "माना की ज़माना बदल जाता है, पर अच्छे कर्मों की खुशबू हमेशा रहती है.",
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
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("Shayaris", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(32)),
                height: 200,
                width: 250,
                child: Center(
                  child: Text(
                    jokes[count].toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  increase();
                  HapticFeedback.heavyImpact();
                },
                child: const Text(
                  "Change Shayari",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    backgroundColor: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
