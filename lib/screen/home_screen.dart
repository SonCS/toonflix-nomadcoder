import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Today's Toons",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
        shadowColor: Colors.black45,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return const Text("There is data!");
          }
          return const Text("Loading...");
        },
      ),
    );
  }
}
