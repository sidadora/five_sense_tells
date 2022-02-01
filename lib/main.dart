import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cover_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    //Riverpodを使うための設定
    ProviderScope(
      child: FiveSenseTells(),
    ),
  );
}

class FiveSenseTells extends StatelessWidget {
  final titleText = 'OurHomeTown';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoverPage(),
      title: 'OurHomeTown',
    );
  }
}
