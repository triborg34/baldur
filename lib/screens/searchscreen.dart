import 'package:baldur/consts.dart';
import 'package:baldur/screens/details%20screen.dart';
import 'package:flutter/material.dart';

class ChapterSearchPage extends StatefulWidget {
  const ChapterSearchPage({super.key,required this.pdfLocalPath});
  final String pdfLocalPath;

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
    searchResults = allsubject; // Initially show all chapters
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
      return allsubject;
    }

    return allsubject.where((data) {
      String title = data["title"].toString().toLowerCase();
      String searchQuery = query.toLowerCase();
      return title.contains(searchQuery);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Location'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search by Location title...',
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
      body:
          searchResults.isEmpty
              ? Center(
                child: Text(
                  'No Location found',
                  style: TextStyle(fontSize: 18),
                ),
              )
              : ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  var data = searchResults[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(data["page"].toString()),
                      ),
                      title: Text(
                        data["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        data["desc"],
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        'Page ${data["page"]}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        // Handle chapter selection
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => Details_screen(
                                  pdfLocalPath: widget.pdfLocalPath,
                                  dec: data["desc"],
                                  page: data["page"],
                                  title: data["title"],
                                ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
    );
  }
}
