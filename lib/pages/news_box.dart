import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String title;
  final String content;
  final String image;


  News({
    required this.title,
    required this.content,
    required this.image});


  @override
  Widget build(BuildContext context){
    return Container(
        margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: Row(
          children: [
            //image section
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Colors.white,
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        content,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}