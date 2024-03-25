import 'package:facebook/widgets/post_item.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (_,__) => StoryItem(),
                  separatorBuilder: (_,__) => SizedBox(width: 16,),
                  itemCount: 10),
            ),
            SizedBox(),
            Expanded(
              flex: 8,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_,__) => PostItem(),
                  separatorBuilder: (_,__) => SizedBox(width: 16,),
                  itemCount: 10),
            ),
          ],

        ),
      ),
    );
  }
}
