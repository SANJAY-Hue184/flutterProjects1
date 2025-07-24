import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PastScore extends StatefulWidget {
  const PastScore({super.key});

  @override
  State<PastScore> createState() => _PastScoreState();
}

class _PastScoreState extends State<PastScore> {
  List<String> pastScores = [];

  @override
  void initState() {
    super.initState();
    loadScores();
  }

  void loadScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      pastScores = prefs.getStringList('pastScores') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Past Scores"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: pastScores.isEmpty
          ? const Center(
        child: Text(
          "You haven't given any quiz yet.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )
          : ListView.builder(
        itemCount: pastScores.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: const Icon(Icons.history, color: Colors.brown),
              title: Text(
                pastScores[index],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          );
        },
      ),
    );
  }
}
