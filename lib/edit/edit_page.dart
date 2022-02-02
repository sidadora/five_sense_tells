import 'package:five_sense_tells/edit/basic_info.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class EditPage extends StatelessWidget {
  final titleText = 'OurHomeTown';
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: EditPageWidget(),
    );
  }
}

class EditPageWidget extends StatefulWidget {
  const EditPageWidget({Key? key}) : super(key: key);

  @override
  State<EditPageWidget> createState() => _EditPageWidgetState();
}

class _EditPageWidgetState extends State<EditPageWidget> {
  final String title = "五感観察日誌";

  // ignore: non_constant_identifier_names
  final list_item = [
    // ignore: deprecated_member_use
    StyledText(
      text: '<settings/>基本情報',
      tags: {
        'settings': StyledTextIconTag(Icons.settings),
      },
    ),
    StyledText(
      text: '<photo/> 写真',
      tags: {
        'photo': StyledTextIconTag(Icons.photo),
      },
    ),
    StyledText(
      text: '<edit/> 手書き',
      tags: {
        'edit': StyledTextIconTag(Icons.edit),
      },
    ),
    StyledText(
      text: '<edit/> 記述１',
      tags: {
        'edit': StyledTextIconTag(Icons.edit),
      },
    ),
    StyledText(
      text: '<edit/> 記述２',
      tags: {
        'edit': StyledTextIconTag(Icons.edit),
      },
    ),
    StyledText(
      text: '<edit/> 記述３',
      tags: {
        'edit': StyledTextIconTag(Icons.edit),
      },
    ),
  ];
  late List<Widget> pages = [
    BasicInfo(),
    EditPage(),
    EditPage(),
    EditPage(),
    EditPage(),
    EditPage(),
  ];
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return list_item[index];
        },
        itemCount: list_item.length,
        prototypeItem: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicInfo()),
              );
            },
          ),
        ),
      ),
    );
  }
}
