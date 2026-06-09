import 'dart:io';

import 'package:baldur/consts.dart';
import 'package:baldur/screens/pdf_viewer_page.dart';
import 'package:flutter/material.dart';
import 'package:baldur/screens/searchscreen.dart';

import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _pdfLocalPath;
  bool _isPreparing = true;

  @override
  void initState() {
    super.initState();
    _preparePdfInBackground();
  }

  Future<void> _preparePdfInBackground() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final localFile = File('${directory.path}/sample.pdf');

      if (await localFile.exists()) {
        setState(() {
          _pdfLocalPath = localFile.path;
          _isPreparing = false;
        });
        return;
      }

      // IMPORTANT: Load the asset as raw bytes
      final byteData = await DefaultAssetBundle.of(
        context,
      ).load('assets/sample.pdf');
      final bytes = byteData.buffer.asUint8List();
      await localFile.writeAsBytes(bytes);

      setState(() {
        _pdfLocalPath = localFile.path;
        _isPreparing = false;
      });
    } catch (e) {
      debugPrint('Error preparing PDF: $e');
      setState(() => _isPreparing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChapterSearchPage(),
                    ),
                  ),
            ),
          ),
        ],
        title: const Text(
          'Dm Guilde To Baldur"s Gate',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isPreparing
                ? Text("Pepering The Pdf")
                : InkWell(
                  child: Text("Pdf is Loaded"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => PdfViewerPage(
                              pdfPath: _pdfLocalPath!,
                              initalpage: 1,
                              title: 'All',
                            ),
                      ),
                    );
                  },
                ),

            SizedBox(height: 15),
            Text(
              "Chapters",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 15),
            Container(
              height: 150,
              color: Colors.transparent,
              child: PageView.builder(
                pageSnapping: true,

                itemBuilder:
                    (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => PdfViewerPage(
                                  pdfPath: _pdfLocalPath!,
                                  initalpage: chapters[index]["page"],
                                  title: chapters[index]["title"],
                                ),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: chcolors[index],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            chapters[index]['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),

                itemCount: chapters.length,
              ),
            ),SizedBox(height: 15,),
                   Text(
              "Baldur's Gate Gazetteer",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
