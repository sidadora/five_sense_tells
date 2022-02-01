import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  final titleText = 'OurHomeTown';
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int _selectedIndex = 0;
  late List<Widget> _pages;
  final String title = "五感観察日誌";

  @override
  void initState() {
    _pages = [
      EditPage(),
      EditPage(),
      EditPage(),
      EditPage(),
      EditPage(),
      EditPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _menuItem("基本情報", Icon(Icons.settings)),
          _menuItem("写真", Icon(Icons.photo)),
          _menuItem("手書き", Icon(Icons.edit)),
          _menuItem("記述１", Icon(Icons.edit)),
          _menuItem("記述２", Icon(Icons.edit)),
          _menuItem("記述３", Icon(Icons.edit)),
        ],
      ),
    );
  }
}

Widget _menuItem(String title, Icon icon) {
  return Container(
    decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
    child: ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 18.0),
      ),
      onTap: () {
        print("onTap called.");
      }, // タップ
      onLongPress: () {
        print("onLongPress called.");
      }, // 長押し
    ),
  );
}
