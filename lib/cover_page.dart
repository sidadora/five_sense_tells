import 'package:five_sense_tells/edit_page.dart';
import 'package:five_sense_tells/repo_page.dart';
import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  static const String _title = '五感観察日誌';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: CoverPageWidget(),
    );
  }
}

class CoverPageWidget extends StatefulWidget {
  const CoverPageWidget({Key? key}) : super(key: key);

  @override
  State<CoverPageWidget> createState() => _CoverPageWidgetState();
}

class _CoverPageWidgetState extends State<CoverPageWidget> {
  int _selectedIndex = 0;
  late List<Widget> _pages;
  final String title = "五感観察日誌";

  @override
  void initState() {
    _pages = [
      EditPage(),
      RepoPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit,
              color: Colors.green,
            ),
            activeIcon: Icon(Icons.edit),
            label: '新しく記入',
            tooltip: "新規ページ",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.green,
            ),
            activeIcon: Icon(Icons.book_online),
            label: 'これまでの作品',
            tooltip: "これまでの作品ページ",
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
