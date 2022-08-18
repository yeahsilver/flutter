import 'package:flutter/material.dart';
import 'package:list_view_data/model.dart';
import 'package:like_button/like_button.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(widget.person.image),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${widget.person.name}\'s job is ${widget.person.job}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            )
          ],
        ),
      ),
    );
  }
}
