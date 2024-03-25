import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Icon(Icons.person,color: Colors.white,),
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text('Owner',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),),
                  Row(
                    children: [
                      Text('3h',style: TextStyle(color: Colors.black54,fontSize: 16),),
                      SizedBox(width: 4,),
                      Icon(Icons.public,size: 18,)
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text('My Post', style: TextStyle(fontSize: 26,),),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('100'),
              SizedBox(width: 10,),
              Image.asset('assets/images/like.jpg',width: 40,height: 40,),
              Spacer(),
              Text('100 Comments'),
            ],
          ),
          Divider(color: Colors.grey,thickness: 1,height: 20,),
          SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/images/like.png',height: 35,width: 35,),
              Text(' Like'),
              Spacer(),
              Image.asset('assets/images/comment.png',height: 35,width: 35,),
              Text(' Comment'),
              Spacer(),
              Image.asset('assets/images/share.png',height: 35,width: 35,),
              Text(' Share'),
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey,thickness: 1,height: 20,),

        ],
      ),
    );
  }
}
