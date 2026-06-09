import 'dart:io';

import 'package:baldur/consts.dart';
import 'package:baldur/screens/details%20screen.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            _isPreparing
                ? Icon(Icons.close, color: Colors.red)
                : IconButton(
                  onPressed: () {
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
                  icon: Icon(Icons.book_rounded, color: Colors.white),
                ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChapterSearchPage(pdfLocalPath: _pdfLocalPath!,),
                      ),
                    ),
              ),
            ),
          ],
          title: const Text(
            'Dm Guide To Baldur"s Gate',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _isPreparing
                //     ? Text("Pepering The Pdf")
                //     : InkWell(
                //       child: Text("Pdf is Loaded"),
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder:
                //                 (context) => PdfViewerPage(
                //                   pdfPath: _pdfLocalPath!,
                //                   initalpage: 1,
                //                   title: 'All',
                //                 ),
                //           ),
                //         );
                //       },
                //     ),
      
                // SizedBox(height: 15),
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
                ),
                SizedBox(height: 15),
                Text(
                  "Baldur's Gate Gazetteer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 100,
      
                  child: CoustumListViewSeperated(data: gazetteer, indexcolor: 0,pdfLocalPath: _pdfLocalPath!,),
                ),
                SizedBox(height: 15),
                Text(
                  "Upper City",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 100,
      
                  child: CoustumListViewSeperated(
                    pdfLocalPath: _pdfLocalPath!,
                    data: upperCity,
                    indexcolor: 129,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Lower city",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 100,
      
                  child: CoustumListViewSeperated(
                        pdfLocalPath: _pdfLocalPath!,
                    data: lowerCity,
                    indexcolor: 457,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Outer  City",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 100,
      
                  child: CoustumListViewSeperated(
                        pdfLocalPath: _pdfLocalPath!,
                    data: outerCity,
                    indexcolor: 217,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CoustumListViewSeperated extends StatelessWidget {
  CoustumListViewSeperated({
    required this.data,
    required this.indexcolor,
    required this.pdfLocalPath,
    super.key,
  });
  String pdfLocalPath;
  List data;
  int indexcolor;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Details_screen(
                  pdfLocalPath: pdfLocalPath,
                  dec: data[index]["desc"],page:data[index]["page"] ,title: data[index]["title"],
                )),
              );
            },
            child: Container(
              width: 200,
              padding: EdgeInsets.all(10.0),
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(),
                color: getRandomColorFromIndex(index + indexcolor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  data[index]['title'],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(1.0, 0.0),
                        blurRadius: 5,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(-1.0, 0.0),
                        blurRadius: 5,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0.0, -1.0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      separatorBuilder: (context, index) => SizedBox(width: 15),
      itemCount: gazetteer.length,
    );
  }
}
