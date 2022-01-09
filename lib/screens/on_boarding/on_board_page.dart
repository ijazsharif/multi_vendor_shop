import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({
    Key? key,
    required this.boardImage,
    required this.title,
  }) : super(key: key);

  final IconData boardImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        SizedBox(height: 24),
        Icon(
          boardImage,
          size: 100,
          color: Colors.black,
        ),
      ],
    );
  }
}
