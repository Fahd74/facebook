import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.asset('assets/images/IMG-20201105-WA0016.jpg'),
          CircleAvatar(child: Icon(Icons.person),radius: 15,),
          Positioned(
            bottom: 0,
            left: 10,
            child: Text('Owner',
              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),

          ),
        ],
      ),
    );
  }
}
