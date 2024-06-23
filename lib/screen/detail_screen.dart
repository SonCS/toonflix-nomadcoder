import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;
  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
        shadowColor: Colors.black45,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.3),
                    )
                  ]),
              child: Image.network(
                thumb,
                headers: const {
                  'Referer': 'https://image-comic.pstatic.net',
                },
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'detail 내용',
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}