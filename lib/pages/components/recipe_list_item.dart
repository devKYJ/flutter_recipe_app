import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget{
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio( //일정 비율로 맞추기.
              aspectRatio: 2/1,
            child:ClipRRect( //이미지 테두리 둥글게.
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover, //비율이 변경되지 않고 설정한 크기를 덮으며 일부 이미지가 잘릴 수 있음
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(title,
          style: TextStyle(fontSize: 20)
          ),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      )
    );
  }

}
