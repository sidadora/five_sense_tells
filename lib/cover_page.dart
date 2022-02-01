import 'package:flutter/material.dart';

import 'fivesensetells_theme.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);
  final String category = 'シェア・ノート';
  final String title = 'Our Active Learning';
  final String login = 'login';
  final String choix1 = '新しく記入';
  final String choix2 = '情報を閲覧';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: Text(
                category,
                style: FiveSenseTellsTheme.LightTextTheme.headline2,
              ),
              top: 10,
              left: 80,
            ),
            Positioned(
              child: Text(
                title,
                style: FiveSenseTellsTheme.LightTextTheme.headline1,
              ),
              top: 80,
              left: 200,
            ),
            Positioned(
              //ログインがすむまでイナクティブ
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WritePage(),
                    ),
                  );
                },
                child: Text(
                  choix1,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
              top: 230,
              left: 250,
            ),
            Positioned(
              //ログインがすむまでイナクティブ
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewPage(),
                    ),
                  );
                },
                child: Text(
                  choix2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
              top: 230,
              left: 450,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 900, height: 650),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/group.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
