import 'package:baldur/consts.dart';
import 'package:flutter/material.dart';

class ChapterSearchPage extends StatefulWidget {
  const ChapterSearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChapterSearchPageState createState() => _ChapterSearchPageState();
}

class _ChapterSearchPageState extends State<ChapterSearchPage> {
  
  
  List searchResults = [];
  TextEditingController searchController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    searchResults = chapters; // Initially show all chapters
    searchController.addListener(_onSearchChanged);
  }
  
  @override
  void dispose() {
    searchController.removeListener(_onSearchChanged);
    searchController.dispose();
    super.dispose();
  }
  
  void _onSearchChanged() {
    setState(() {
      searchResults = _searchChapters(searchController.text);
    });
  }
  
  List _searchChapters(String query) {
    if (query.isEmpty) {
      return chapters;
    }
    
    return chapters.where((chapter) {
      String title = chapter["title"].toString().toLowerCase();
      String searchQuery = query.toLowerCase();
      return title.contains(searchQuery);
    }).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Chapters'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search by chapter title...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              autofocus: false,
            ),
          ),
        ),
      ),
      body: searchResults.isEmpty
          ? Center(
              child: Text(
                'No chapters found',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                var chapter = searchResults[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(chapter["page"].toString()),
                    ),
                    title: Text(
                      chapter["title"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(chapter["Dec"]),
                    trailing: Text(
                      'Page ${chapter["page"]}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      // Handle chapter selection
                      print('Selected: ${chapter["title"]}');
                    },
                  ),
                );
              },
            ),
    );
  }
}